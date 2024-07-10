local ava = require("AvaHelpers")
local infHelpers = require("InfinityHelpers")
local ClassFactory = require("ClassFactory")
local VirtualReaderPC_GridBase = require("VirtualReaderPC_GridBase")
VirtualReaderPC_GridCharacter = ClassFactory.CreateClass("VirtualReaderPC_GridCharacter", VirtualReaderPC_GridBase)
VirtualReaderPC_GridCharacter.ScreenDefinition = {
  SWF = "VirtualReader/VirtualReaderPC_GridCharacter",
  doLuaInput = true,
  needsInput = true,
  needsKeyboardInput = true,
  priority = 0
}

function VirtualReaderPC_GridCharacter:onEnter()
  self.numRows = 3
  self.numColumns = 8
  self.itemType = "Avatar"
  self.selectedCharacter = nil
  self.staticSortStrings = {
    "VRPC_Sort_AtoZ",
    "VRPC_Sort_ZtoA",
    "VRPC_Sort_HighestCost",
    "VRPC_Sort_LowestCost",
    "VRPC_Sort_HighestLevel",
    "VRPC_Sort_LowestLevel",
    "VRPC_Sort_Franchise",
    "VRPC_Sort_ByVersion"
  }
  VirtualReaderPC_GridCharacter.superClass().onEnter(self)
end

function VirtualReaderPC_GridCharacter:MovieLoaded()
  if self:IsOnboardTutorialActive() then
    UI_ShowOnboardTutorialOverlay()
  end
  VirtualReaderPC_GridCharacter.superClass().MovieLoaded(self)
end

function VirtualReaderPC_GridCharacter:GetGridButtonText(info)
  local text
  if info.Level ~= "" and info.Level ~= nil then
    text = "Lv " .. info.Level
  end
  return text
end

function VirtualReaderPC_GridCharacter:GetGridButtonImage(info)
  local image = "ui/icons/HUD_PlayerIcons_Default"
  if info.Icon ~= "" and info.Icon ~= nil then
    image = "ui/icons/" .. info.Icon
  end
  return image
end

function VirtualReaderPC_GridCharacter:GetGridButtonState(info)
  local state = "available"
  if info.IsLocked and info.IsTrialPlayable ~= nil then
    if info.IsTrialPlayable then
      state = "available"
    else
      state = "available"
    end
  end
  if info.IsDead then
    state = "dead"
  end
  return state
end

function VirtualReaderPC_GridCharacter:GetButtonLegend()
  if not UI_IsPlalaGame() and not UI_IsTOGOOfflineGame() then
    return "Btn_Legend_VRPC_Select,Btn_Legend_VRPC_Inspect,btn_legend_vrpc_purchase_sparks,Btn_Legend_Back"
  else
    return "Btn_Legend_VRPC_Select,Btn_Legend_VRPC_Inspect,Btn_Legend_Back"
  end
end

function VirtualReaderPC_GridCharacter:onKeyDown(t)
  if not self.movieLoadedAndFocused then
    return
  end
  if not t then
    return
  end
  if self:IsOnboardTutorialActive() then
    local onboardState = UI_GetOnboardTutorialStateString()
    if t.action ~= KeyMap.GN_LST_SELECT and onboardState ~= "ToyboxCharacterSelection" then
      return
    elseif t.action == KeyMap.GN_LST_PAGE_UP or t.action == KeyMap.GN_LST_PAGE_DOWN then
      return
    elseif t.action == KeyMap.GN_LST_SELECT and (onboardState == "ToyboxCharacterDescription" or onboardState == "ToyboxCharacterBrands" or onboardState == "ToyboxCharacterBrandFilters" or onboardState == "ToyboxCharacterSearch" or onboardState == "ToyboxCharacterSorting") then
      UI_AdvanceOnboardTutorialState()
      return
    end
  end
  if t.action == KeyMap.GN_LST_CANCEL then
    Sfx_Play2D("GenericList_Cancel")
    if self.bIsFilterPanelOpen == true then
      self:CloseFilterPanel(not self.bSelectingFilterCategories)
    elseif self.bIsSortPanelOpen == true then
      self:CloseSortPanel(not self.bSelectingFilterCategories)
    else
      if self:IsOnboardTutorialActive() then
        return
      end
      self:ExitScreen()
      self:ReturnToLoadout()
    end
  elseif t.action == KeyMap.GN_LST_SELECT and self.bSelectingFilterCategories == false then
    if self.IsTypingFilter == false then
      if self.bIsFilterPanelOpen == true then
        self:SelectFilter()
      elseif self.bIsSortPanelOpen == true then
        self:SelectSort()
      else
        if self:GetControllerBeingUsed() then
          local option = self:CallFlashFunction("_root.GetCurrentElement", self:GetCurrentGrid())
          self.selectedCharacter = option
        end
        if not UI_IsPlalaGame() then
          self:DoSelectGridItem()
        elseif not self:GetItemData(tonumber(self.selectedCharacter), "locked") then
          self:DoSelectGridItem()
        else
          self:DoInspectCharacter()
        end
      end
    end
  elseif t.action == KeyMap.GN_LST_WEST then
    if self.IsTypingFilter == false and self.bIsFilterPanelOpen == false and self.bIsSortPanelOpen == false and self.bIsMainGridInactive == false then
      if self:GetControllerBeingUsed() then
        local option = self:CallFlashFunction("_root.GetCurrentElement", self:GetCurrentGrid())
        self.selectedCharacter = option
      end
      self:DoInspectCharacter()
    end
  elseif t.action == KeyMap.GN_LST_PAGE_UP then
    local handle = UI.GetHandleFromName("VirtualReaderPC_Tabs", self.InstanceData.playerNum)
    if handle ~= UI.INVALID_UI_HANDLE then
      self:CallScreenFunctionByScreenName("VirtualReaderPC_Tabs", self.InstanceData.playerNum, "onKeyDown", t)
      self:OnTabChanged("loadout")
    end
  elseif t.action == KeyMap.GN_LST_PAGE_DOWN then
    local handle = UI.GetHandleFromName("VirtualReaderPC_Tabs", self.InstanceData.playerNum)
    if handle ~= UI.INVALID_UI_HANDLE then
      self:CallScreenFunctionByScreenName("VirtualReaderPC_Tabs", self.InstanceData.playerNum, "onKeyDown", t)
      self:OnTabChanged("coins")
    end
  else
    VirtualReaderPC_GridCharacter.superClass().onKeyDown(self, t)
  end
end

function VirtualReaderPC_GridCharacter:UpdateItemGridForFiltersAndSorting()
  self.selectedCharacter = nil
  VirtualReaderPC_GridCharacter.superClass().UpdateItemGridForFiltersAndSorting(self)
end

function VirtualReaderPC_GridCharacter:SelectGridItem()
  if self.IsTypingFilter == true then
    self:UnselectFilterBar()
    return
  end
  if self.bIsFilterPanelOpen == true or self.bIsSortPanelOpen == true or self.bIsMainGridInactive == true then
    return
  end
  local option = self:CallFlashFunction("_root.GetCurrentElement", self:GetCurrentGrid())
  if option ~= nil and option ~= "" then
    if option == self.selectedCharacter then
      self:DoSelectGridItem()
    else
      if self.selectedCharacter ~= nil then
        local lastData = self.listData[tonumber(self.selectedCharacter)]
        if lastData ~= nil then
          lastData.selected = false
          self:CallFlashFunction("_root.RebuildElement", self:GetCurrentGrid(), self.selectedCharacter)
        end
      end
      self.selectedCharacter = option
      local newData = self.listData[tonumber(self.selectedCharacter)]
      if newData ~= nil then
        newData.selected = true
        newData.fromMouseClick = true
        self:CallFlashFunction("_root.RebuildElement", self:GetCurrentGrid(), self.selectedCharacter)
        newData.fromMouseClick = false
      end
    end
  end
end

function VirtualReaderPC_GridCharacter:DoSelectGridItem()
  if self:IsOnboardTutorialActive() then
    local onboardState = UI_GetOnboardTutorialStateString()
    if onboardState ~= "ToyboxCharacterSelection" then
      return
    end
  end
  if self.selectedCharacter ~= nil and self.selectedCharacter ~= "" then
    self.IsTypingFilter = false
    local isItemLocked = false
    if isItemLocked then
      Sfx_Play2D("item_unavailable")
      local itemName = self:GetItemData(tonumber(self.selectedCharacter), "name")
      self:GoToUpSellPC(itemName)
      self.selectedCharacter = nil
    else
      if self:IsOnboardTutorialActive() then
        local onboardState = UI_GetOnboardTutorialStateString()
        if onboardState == "ToyboxCharacterSelection" then
          UI_SetOnboardTutorialState("ToyboxLoadoutPlay")
        end
      end
      Sfx_Play2D("GenericList_Cancel")
      local newSkuId = self:GetItemData(tonumber(self.selectedCharacter), "skuId")
      VirtualReaderPC_SetCurrentCharacter(newSkuId)
      self:ExitScreen()
      self:ReturnToLoadout()
    end
  end
end

function VirtualReaderPC_GridCharacter:DoInspectCharacter()
  if self.selectedCharacter ~= nil and self.selectedCharacter ~= "" then
    local characterName = self:GetItemData(tonumber(self.selectedCharacter), "name")
    self:GoToCharacterInspect(characterName)
  end
end

function VirtualReaderPC_GridCharacter:RefreshScreen()
  self:RefreshItemGrid()
  VirtualReaderPC_GridCharacter.superClass().RefreshScreen(self)
end

function VirtualReaderPC_GridCharacter:DisplayFiltersForOnboardState(onboardState)
  if onboardState == "ToyboxCharacterDescription" then
    self.bIsMainGridInactive = true
    self:CallFlashFunction("_root.ActivateGrids", false)
  elseif onboardState == "ToyboxCharacterBrandFilters" then
    self:PressedFilterPanelButton()
    self:CallFlashFunction("_root.ActivateGrids", false)
  elseif onboardState == "ToyboxCharacterSearch" then
    self:CloseFilterPanel()
    self:CallFlashFunction("_root.ActivateGrids", false)
  elseif onboardState == "ToyboxCharacterSelection" then
    self.bIsMainGridInactive = false
    self.bIsGridDisabledForOnboard = false
    self:CallFlashFunction("_root.ActivateGrids", true)
  end
end

return VirtualReaderPC_GridCharacter
