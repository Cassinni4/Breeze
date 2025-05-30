local ava = require("AvaHelpers")
local infHelpers = require("InfinityHelpers")
local KeyMap = require("KeyMap")
local ClassFactory = require("ClassFactory")
local DetailsPanel = require("DetailsPanel")
UGCDetailsPanel = ClassFactory.CreateClass("UGCDetailsPanel", DetailsPanel)
UGCDetailsPanel.ScreenDefinition = {
  SWF = "DetailsPanel/DetailsPanel",
  priority = 0,
  needsInput = false
}

function UGCDetailsPanel:onEnter()
  self.showFullBackgroundSize = true
  self.defaultScreenShot = "ui/icons/SaveLoad_GenericScreenshot"
  self:SetActionMap("GN_LST_CANCEL")
  self.isHorizontalSplit = UI_IsGamePlayHorizontalSplit()
  self:BuildList()
  UGCDetailsPanel.superClass().onEnter(self)
end

function UGCDetailsPanel:onExit()
  GameSaveLoadUGCScreenExit()
  UGCDetailsPanel.superClass().onExit(self)
end

function UGCDetailsPanel:MovieLoaded()
  UGCDetailsPanel.superClass().MovieLoaded(self)
end

function UGCDetailsPanel:onActive()
  UGCDetailsPanel.superClass().onActive(self)
end

function UGCDetailsPanel:BuildList()
  self.listData = {}
  if not self.isHorizontalSplit then
    self.listData[#self.listData + 1] = {
      id = "screenShot",
      widgetType = "screenShot",
      buttonState = "",
      get = nil,
      set = nil
    }
  end
  self.listData[#self.listData + 1] = {
    id = "Header",
    widgetType = "UGC_Header",
    text = "",
    buttonState = "",
    get = nil,
    set = nil
  }
end

function UGCDetailsPanel:SetData(t)
  if not t.indx then
    self:SetScreenShot(self.defaultScreenShot)
  end
  if not t.name then
    t.name = "@Scn_UGC_NoUGC"
  end
  local dataCopy = ava.clone(t)
  dataCopy.name = self:GetDisplayName(dataCopy)
  dataCopy.desc = self:GetDisplayDesc(dataCopy)
  self:CallFlashFunction("_root.SetElement", "SetUGCHeaderData", dataCopy)
  if t.error then
    self.doGoBack = t.doGoBack
    if t.msg then
      self.popupBody = t.msg
      self:ShowPopup()
    end
    return
  end
  local tab = ""
  if t and t.playset then
    tab = t.playset == "TbxAdventure" and 2 or 1
  end
  self:CallFlashFunction("_root.SetHeaderTab", tab, t.isLiked or false)
  self:CallFlashFunction("_root.ShowHeaderTab", t.showLikes or false)
  local perfWarn = t and t.performanceStatus == 1 and "@Scn_UGC_PerformanceWarning" or ""
  self:CallFlashFunction("_root.SetElement", "SetPerformanceWarning", perfWarn)
  local textWarn = t and t.hasTextToy and "@Scn_Warning_TextToyText" or ""
  self:CallFlashFunction("_root.SetElement", "SetTextToyWarning", textWarn)
  if t.isShowingDetailsOnly then
    self:RequestScreenShot(t.indx)
  end
  self.ugcData = {
    indx = t.indx,
    id = t.id,
    name = t.name,
    desc = t.desc,
    playset = t.playset,
    creator = t.creator,
    platformCreator = t.platformCreator,
    performanceStatus = t.performanceStatus,
    rating = t.rating,
    downloads = t.downloads,
    isLiked = t.isLiked,
    hasTextToy = t.hasTextToy,
    videoId = t.videoId
  }
end

function UGCDetailsPanel:PushUGCIndex()
  if self.rumpusToyHandle and self.ugcData and self.ugcData.id then
    SetUGCIDForRumpusToy(self.rumpusToyHandle, self.ugcData.indx)
  end
end

function UGCDetailsPanel:SetRumpusToyHandle(t)
  self.rumpusToyHandle = t and t.handle or nil
  self.setToyOnSelect = t and t.setToyOnSelect or nil
end

function UGCDetailsPanel:ClearRumpusToyHandle()
  self.rumpusToyHandle = nil
end

function UGCDetailsPanel:GetSelectedIndex()
  if self.ugcData and self.ugcData.indx then
    return self.ugcData.indx
  end
  return -1
end

function UGCDetailsPanel:RequestScreenShot(indx)
  local res = UGC_RequestScreenShot(self.InstanceData.playerNum, indx)
  if res == 0 then
    self:SetScreenShot(self.defaultScreenShot)
  end
end

function UGCDetailsPanel:PlayerStorageChange(t)
  if t.goBack then
    self:RequestExit()
  end
end

--function UGCDetailsPanel:ShowPopup()
  --local popup = {
    --title = "@Scn_ErrorPopup_Title",
    --body = "@" .. self.popupBody,
    --list = "SharedText_Ok",
    --buttonPrompts = "Btn_Legend_Select",
    --onSelect = function(option)
      --if self.doSignIn then
        --UI_CheckCCSignIn(self.InstanceData.playerNum)
      --end
      --if self.doGoBack then
        --self:RequestExit()
      --end
    --end,
    --hideArrow = true,
    --allowCancel = true
--  }
  --self.popupHandle = self:AddScreen({screenName = "Popup"})
  --self:CallScreen(self.popupHandle, "SetUsingTable", popup, true)
--end

function UGCDetailsPanel:UpdateScreenShot(t)
  UnloadScreenShot("last")
  if t.error then
    self:SetScreenShot(self.defaultScreenShot)
  else
    self:SetScreenShot("SCREENSHOT")
  end
end

function UGCDetailsPanel:ShowMessage(t)
  if not t or not t.msg then
    return
  end
  local popup = {
    title = "@Scn_ErrorPopup_Title",
    body = "@" .. t.msg,
    list = "SharedText_Ok",
    buttonPrompts = "Btn_Legend_Select",
    onSelect = function(option)
      if t.doGoBack then
        self:RequestExit()
      end
    end,
    hideArrow = true,
    allowCancel = false
  }
  self:SetScreenShot(self.defaultScreenShot)
  self.popupHandle = self:AddScreen({screenName = "Popup"})
  self:CallScreen(self.popupHandle, "SetUsingTable", popup, true)
end

return UGCDetailsPanel
