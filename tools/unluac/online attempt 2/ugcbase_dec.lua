local ClassFactory = require("ClassFactory")
local GameSaveLoadUGCBase = require("GameSaveLoadUGCBase")
UGCBase = ClassFactory.CreateClass("UGCBase", GameSaveLoadUGCBase)
UGCBase.UploadPopup = {
  GetTitle = function(self)
    return "Scn_UGC_Upload"
  end,
  GetBody = function(self)
    return self.body
  end,
  GetList = function(self)
    return self.list
  end,
  SelectOption = function(self, option)
    self.parent:uploadOptionSelected(option)
    self.parent:RequestExit(self.parent.uploadHandle)
  end
}
UGCBase.MessagePopup = {
  GetTitle = function(self)
    return self.title
  end,
  GetBody = function(self)
    return self.body
  end,
  GetList = function(self)
    return {
      "SharedText_Ok"
    }
  end,
  SelectOption = function(self, option)
  end
}

function UGCBase:onEnter()
  self.subHeaderLabel = self.subHeaderLabel or "@Scn_PageUpPageDown"
  self.userName = ""
  self.userDesc = ""
  self.useDefaultNames = false
  self.isPublic = false
  self.isPaging = false
  self.prevIndex = 1
  self.numVisibleElements = self.numVisibleElements or 12
  self.clientTopIndx = 1
  self.clientBottomIndx = 1
  self.clientPageSize = 1
  self.requestDirection = "first"
  self.category = UGC_GetSearchCategoryString(-1)
  self.ugcTarget = UGC_GetUGCTarget()
  self.v1Category = "UGC_Cat_INF1"
  self.arcadeCategory = "UGC_Cat_Arcade"
  self.showLikes = self.menuName == "UGCPublic"
  self.subheaderClass = "Category"
  self.MessagePopup.parent = self
  self.MessagePopup.hideArrow = true
  self.UploadPopup.parent = self
  self.UploadPopup.hideArrow = true
  self.isHorizontalSplit = UI_IsGamePlayHorizontalSplit()
  if self.isHorizontalSplit then
    self.numVisibleElements = 5
  end
  UGCBase.superClass().onEnter(self)
  self:AppendActionMap("START")
end

function UGCBase:onExit()
  UGC_SetSearchTerms("")
  self.allowUpdate = true
  UGCBase.superClass().onExit(self)
end

--function UGCBase:onActive()
  --local isLegalResult, legalMsg = UGC_IsLegalContentRequest(self.InstanceData.playerNum)
  --if isLegalResult == 0 then
    --self:SetFocus(false)
    --self:RequestExit()
    --return
  --end
  --UGCBase.superClass().onActive(self)
  --self.isOnline = IsOnline(self.InstanceData.playerNum)
  --self.hasDID = IsSignedIntoDisneyID(self.InstanceData.playerNum)
  --if not self.isOnline or not self.hasDID then
    --self:RequestExit()
  --end
--end

function UGCBase:SelectedItemChanged(id, visibleIndex)
  self.prevIndex = self.selectedIndex
  self.clientCurrIndx = self.selectedIndex + self.clientTopIndx - 1
  self.onSelectedCalled = true
  UGCBase.superClass().SelectedItemChanged(self, id, visibleIndex)
end

--function UGCBase:MovieLoaded()
  --self.detailsHandle = self:AddScreen({
    --screenName = "UGCDetailsPanel"
--  })
  --UGCBase.superClass().MovieLoaded(self)
--end

function UGCBase:UpdateDetailsPanelData()
  local t = self.listData[self.selectedIndex]
  t = t or {
    name = "@Scn_UGC_NoUGC",
    desc = "",
    creator = "",
    platformCreator = ""
  }
  t.showLikes = self.showLikes
  self:CallScreenFunction(self.detailsHandle, "SetData", t)
end

function UGCBase:GetDetailsButtonLegend()
  local btnList = {}
  local t = self.listData[self.selectedIndex]
  btnList[#btnList + 1] = "Btn_Legend_Select"
  if self.menuName == "UGCPublic" and self.category ~= self.v1Category then
    btnList[#btnList + 1] = "Btn_Legend_Search"
    btnList[#btnList + 1] = "Btn_Legend_Filter"
    btnList[#btnList + 1] = "Btn_Legend_PageUp"
    btnList[#btnList + 1] = "Btn_Legend_PageDown"
  elseif self.menuName == "UGCPrivate" and t and t.playset ~= "TbxInterior" and self.ugcTarget ~= 6 then
    btnList[#btnList + 1] = "Btn_Legend_Delete"
  end
  btnList[#btnList + 1] = "Btn_Legend_Back"
  local buttonLegend = table.concat(btnList, ",")
  return buttonLegend
end

function UGCBase:GoBack()
  if self.detailsHandle then
    self:RequestExit(self.detailsHandle)
    self.detailsHandle = nil
  end
  self:RequestExit()
end

function UGCBase:FiltersChosen()
  self.startId = 1
  self.selectedId = 1
  self:RequestList()
end

function UGCBase:RequestList()
  if SaveLoad_IsSaving() then
    self:ScheduleTimer("ONE_SHOT", 0.1, "RequestList")
    return
  end
  self.category = UGC_GetSearchCategoryString(-1)
  if self.currCatIndx == 7 then
    local searchTerm = UGC_GetSearchTerm()
    if #searchTerm == 0 then
      self:CallScreenFunction(self.detailsHandle, "SetScreenShot", self.defaultScreenShot)
      self:ClearList()
      self:Rebuild()
      return
    end
  end
  local res, msg = UGC_RequestList(self.InstanceData.playerNum, self.requestDirection)
  self.isPaging = true
  if res ~= 1 then
    self.isPaging = false
    if 0 < #msg then
      self.MessagePopup.title = "Scn_ErrorPopup_Title"
      self.MessagePopup.body = msg
      
      function self.MessagePopup:SelectOption(option)
      end
      
      self.messageHandle = self:AddScreen({
        screenName = "Popup",
        playerNum = self.InstanceData.playerNum,
        dataProvider = self.MessagePopup
      })
      self:CallScreenFunction(self.detailsHandle, "SetScreenShot", self.defaultScreenShot)
    end
  else
    self:SetFocus(false)
    self:ShowBusyAnimation()
    self:UpdateButtonLegend()
  end
end

function UGCBase:SaveFinished(t)
  self.MessagePopup.title = "Scn_UGC_Download"
  self.MessagePopup.body = t.msg
  
  function self.MessagePopup:SelectOption(option)
  end
  
  self.popupHandle = self:AddScreen({
    screenName = "Popup",
    playerNum = self.InstanceData.playerNum,
    dataProvider = self.MessagePopup
  })
  if not t.error and self.lastDownloadIndex then
    local data = self.listData[self.lastDownloadIndex]
    if data then
      data.slotset = t.slotset
      data.slotlevel = t.slotlevel
      data.isStoredLocally = true
      data.isInSync = true
      if t.downloads then
        data.downloads = t.downloads
      end
      self:UpdateDetailsPanelData()
      self:RequestScreenShot(tonumber(self.selectedId))
      self.startId = self.selectedId
      self:Rebuild()
    end
  end
  self.lastDownloadIndex = nil
end

function UGCBase:CheckForClientPage()
  if self.prevIndex < self.selectedIndex and self.clientBottomIndx - self.clientCurrIndx <= self.numVisibleElements and self.clientCurrPage < self.clientNumPages then
    self.requestDirection = "next"
    if not self.isPaging then
      self:RequestList()
    end
  elseif self.prevIndex > self.selectedIndex and self.clientCurrIndx - self.clientTopIndx <= self.numVisibleElements and self.clientCurrPage > 1 then
    self.requestDirection = "prev"
    if not self.isPaging then
      self:RequestList()
    end
  end
end

function UGCBase:Rebuild(t)
  if self.requestDirection == "prev" then
    self.selectedId = self.clientPageSize
  elseif self.requestDirection == "next" then
    self.selectedId = 1
  end
  UGCBase.superClass().Rebuild(self, t)
  self:UpdateDetailsPanelData()
  self.isPaging = false
  self.requestDirection = "none"
end

function UGCBase:ConfirmUpload()
  local data = self.listData[self.selectedIndex]
  local largePopup = false
  if self.isPublic then
    self.UploadPopup.body = "Scn_UGC_NewPublic"
    largePopup = true
  else
    local isNew = data.saveType == "new"
    --local isSignedIn = IsSignedIntoDisneyID(self.InstanceData.playerNum)
    local isOnline = IsOnline(self.InstanceData.playerNum)
    if isOnline and isSignedIn and isNew then
      local canSaveNewLocal = UGC_CanSaveNewLocal(data.playset)
      local canUpload = UGC_CanUploadToCloud()
      if platform == "TARGET_CAFE" then
        local noSpaceToSave = UGC_NoSpaceToSave()
        if noSpaceToSave == 1 then
          canSaveNewLocal = true
        end
      end
      if canSaveNewLocal and canUpload then
        self.UploadPopup.body = "Scn_UGC_NewPrivate"
        largePopup = true
      elseif canSaveNewLocal then
        self.UploadPopup.body = "Scn_UGC_NewLocalAtMax"
      else
        self.MessagePopup.body = "Scn_UGC_MaxSlots"
        
        function self.MessagePopup:SelectOption(option)
        end
        
        self.messageHandle = self:AddScreen({
          screenName = "Popup",
          playerNum = self.InstanceData.playerNum,
          dataProvider = self.MessagePopup
        })
        return
      end
    elseif isOnline and isSignedIn then
      self.UploadPopup.body = "SharedText_Overwrite"
    elseif (not isOnline or not isSignedIn) and isNew then
      if UGC_CanSaveNewLocal(data.playset) then
        self.UploadPopup.body = "Scn_UGC_NewLocal"
      else
        self.MessagePopup.body = "Scn_UGC_MaxSlots"
        
        function self.MessagePopup:SelectOption(option)
        end
        
        self.messageHandle = self:AddScreen({
          screenName = "Popup",
          playerNum = self.InstanceData.playerNum,
          dataProvider = self.MessagePopup
        })
        return
      end
    else
      self.UploadPopup.body = "Scn_UGC_OverwriteLocalAsk"
    end
  end
  self.UploadPopup.list = {
    "SharedText_Yes",
    "SharedText_No"
  }
  if platform ~= "TARGET_CAFE" then
    self.uploadHandle = self:AddScreen({
      screenName = "Popup",
      playerNum = self.InstanceData.playerNum,
      dataProvider = self.UploadPopup
    })
  elseif largePopup then
    self.uploadHandle = self:AddScreen({
      screenName = "PopupLarge",
      playerNum = self.InstanceData.playerNum,
      dataProvider = self.UploadPopup
    })
  else
    self.uploadHandle = self:AddScreen({
      screenName = "Popup",
      playerNum = self.InstanceData.playerNum,
      dataProvider = self.UploadPopup
    })
  end
end

function UGCBase:GetElementData(id, dataType)
  if id == nil then
    return
  end
  local index = tonumber(id)
  local data = self.listData[index]
  if data == nil then
    return nil
  else
    return data.name
  end
end

function UGCBase:SelectItem()
  local data = self.listData[self.selectedIndex]
  if data.saveType == "new" then
    self:ConfirmUpload()
    return
  end
  if data == nil or data.name == nil or data.date == nil or data.time == nil then
    return
  end
  if not data.isPublic and data.isStoredLocally and data.isStoredGlobally and not data.isInSync then
    self:ShowSyncContentOption(data)
    return
  elseif data.version == 1 then
    local res, msg = UGC_RequestContentItemCount(self.InstanceData.playerNum, data.indx)
    if res == 1 then
      self.doPlayNow = true
      self:ShowBusyAnimation()
      self:SetFocus(false)
    else
      self.MessagePopup.title = "Scn_ErrorPopup_Title"
      self.MessagePopup.body = msg
      self.MessagePopup.list = {
        "SharedText_Ok"
      }
      
      function self.MessagePopup:SelectOption(option)
      end
      
      self.messageHandle = self:AddScreen({
        screenName = "Popup",
        playerNum = self.InstanceData.playerNum,
        dataProvider = self.MessagePopup
      })
    end
  else
    self:LoadLevelPopup()
  end
end

function UGCBase:LoadLevelPopup()
  local t = self.listData[self.selectedIndex]
  local body
  if System_InFrontEndOld() then
    if t.isStoredLocally then
      self:LoadLevel()
      return
    end
    body = self.menuName == "UGCPublic" and "Scn_UGC_PlayAskDisney" or "Scn_UGC_PlayAsk"
  elseif t.isStoredLocally then
    body = "Scn_Save_UnsavedProgress"
  else
    body = self.menuName == "UGCPublic" and "Scn_UGC_PlayUnsavedAskDisney" or "Scn_UGC_PlayUnsavedAsk"
  end
  local popup = {
    title = "@Scn_UGC_Play",
    body = "@" .. body,
    list = "SharedText_Ok,SharedText_Cancel",
    buttonPrompts = "Btn_Legend_Select,Btn_Legend_Cancel",
    onSelect = function(option)
      if option == "SharedText_Ok" then
        self:LoadLevel()
      end
    end,
    hideArrow = true,
    allowCancel = true
  }
  self.popupHandle = self:AddScreen({screenName = "Popup"})
  self:CallScreen(self.popupHandle, "SetUsingTable", popup, true)
  self:SetFocus(false)
end

function UGCBase:uploadOptionSelected(option)
  if option == "SharedText_Yes" then
    local t = self:GetSaveLoadFields()
    self.saveLoadNamesHandle = self:AddScreen({
      screenName = "SaveLoadNames"
    })
    self:CallScreenFunction(self.saveLoadNamesHandle, "SetParentScreen", t)
  end
end

function UGCBase:LaunchLevel(t)
  if #t.level > 0 then
    self.levelToLoad = t.level
  end
  self:LaunchLevelUI()
end

function UGCBase:LaunchLevelUI()
  if self.levelToLoad and #self.levelToLoad > 0 then
    UI_LaunchLevel(self.levelToLoad, "profile", true, true, true)
    self.levelToLoad = nil
  end
end

function UGCBase:AddLeaderboard()
  local data = self.listData[self.selectedIndex]
  if data and data.leaderboardId then
    Leaderboard_SetName(data.leaderboardId)
    self:AddScreen({
      screenName = "Leaderboard"
    })
  end
end

function UGCBase:ShowItemScreen()
  local data = self.listData[self.selectedIndex]
  if not data then
    return
  end
  self:SetFocus(false)
  local itemOptionsHandle = self:AddScreen({
    screenName = "UGCItemOptions"
  })
  self:CallScreenFunction(itemOptionsHandle, "SetMenuName", self.menuName)
  self:CallScreenFunction(itemOptionsHandle, "SetData", data)
end

function UGCBase:onKeyDown(t)
  local data = self.listData[self.selectedIndex]
  if t.action == KeyMap.GN_LST_SELECT then
    self:ShowItemScreen()
  elseif t.action == KeyMap.GN_LST_WEST then
    if self.menuName ~= "UGCPublic" or self.category == self.v1Category then
      return
    end
    self.filterHandle = self:AddScreen({screenName = "UGCFilters"})
    local t = {
      parentScreen = self.menuName,
      parentCallback = "FiltersChosen"
    }
    self:CallScreenFunction(self.filterHandle, "SetParentScreen", t)
  elseif t.action == KeyMap.GN_LST_UNPAUSE then
    if self.category == self.v1Category then
      return
    end
  elseif t.action == KeyMap.GN_LST_LT then
    if not data then
      return
    end
    if self.selectedIndex <= self.numVisibleElements and self.clientCurrPage > 1 and not self.isPaging then
      self.requestDirection = "prev"
      local newIndx = self.clientPageSize - self.numVisibleElements + self.selectedIndex
      if newIndx < 1 then
        newIndx = 1
      end
      self.startId = newIndx
      self.selectedId = newIndx
      self:RequestList()
    else
      self:CallFlashFunction("_root.PageUp")
    end
  elseif t.action == KeyMap.GN_LST_RT then
    if not data then
      return
    end
    if self.selectedIndex > #self.listData - self.numVisibleElements and self.clientCurrPage < self.clientNumPages and not self.isPaging then
      self.requestDirection = "next"
      self.startId = 1
      self.selectedId = 1
      self:RequestList()
    else
      self:CallFlashFunction("_root.PageDown")
    end
  elseif t.action == KeyMap.GN_LST_PREV_ITEM then
    if self.onSelectedCalled == false and self.selectedIndex == 1 and self.clientCurrPage and self.clientCurrPage > 1 and not self.isPaging then
      self.requestDirection = "prev"
      self.startId = self.clientPageSize
      self.selectedId = self.clientPageSize
      self:RequestList()
    else
      UGCBase.superClass().onKeyDown(self, t)
    end
  elseif t.action == KeyMap.GN_LST_NEXT_ITEM then
    if self.onSelectedCalled == false and self.selectedIndex == #self.listData and self.clientCurrPage and self.clientCurrPage < self.clientNumPages and not self.isPaging then
      self.requestDirection = "next"
      self.startId = 1
      self.selectedId = 1
      self:RequestList()
    else
      UGCBase.superClass().onKeyDown(self, t)
    end
  elseif t.action == KeyMap.GN_LST_BACK then
    self:AddLeaderboard()
  else
    UGCBase.superClass().onKeyDown(self, t)
  end
  self.onSelectedCalled = false
end

return UGCBase
