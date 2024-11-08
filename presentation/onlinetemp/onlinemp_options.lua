local ClassFactory = require("ClassFactory")
local MenuBase = require("MenuBase")
local SessionLock = require("sessionlock")  -- Require the session lock module
local SessionPlayers = require("sessionplayers")  -- Require the session players module
local FriendsListMenu = require("friendslist_menu")  -- Require the friends list menu module
local P2POptions = require("p2poptions")  -- Require the P2P options module
local ModdingP2POptions = require("moddingp2poptions")  -- Require modding P2P options module
local OnlineInfo = require("onlineinfo")  -- Require online info module
local OnlineOptionLog = require("onlineoptionlog")  -- Require the logging module

OnlineMP_Options = ClassFactory.CreateClass("OnlineMP_Options", MenuBase)

-- Initialize the logger
OnlineOptionLog:Init()

OnlineMP_Options.UnlinkPopup = {
    GetTitle = function(self) return "Scn_Unlink" end,
    GetBody = function(self) return "Scn_UnlinkAreYouSure" end,
    GetList = function(self) return "SharedText_No,SharedText_Yes" end,
    SelectOption = function(self, option)
        if option == "SharedText_Yes" then
            UI_UnlinkDisneyID()
            self.parent.popupTitle = "@Scn_Unlink"
            self.parent.popupBody = "@Scn_UnlinkRequested"
            self.parent:ShowMessagePopup()
            OnlineOptionLog:Log("Unlink option selected.")
        end
    end,
    OnKeyDown = function(self, key)
        if key == KeyMap.GN_LST_CANCEL then self.parent:RequestExit() end
    end
}

function OnlineMP_Options:GetHeaderLabel()
    return "@Scn_Pause_OnlineMP"
end

function OnlineMP_Options:onEnter(screenObj)
    OnlineMP_Options.superClass().onEnter(self, screenObj)
    OnlineOptionLog:Log("Entered OnlineMP options menu.")
    self:BuildList()
end

function OnlineMP_Options:BuildList()
    self.listData = {}
    self.UnlinkPopup.parent = self
    self.UnlinkPopup.hideArrow = true

    local online = true  -- Set this based on actual online status check
    if not online then return end

    -- Add buttons
    self:AddListButton("Scn_LockUnlock_Game")
    self:AddListButton("Scn_ViewPlayers")  -- Existing button
    self:AddListButton("Scn_Friends_List")  -- New friends list button
    self:AddListButton("Scn_P2P_Options")  -- Placeholder for P2P options
    self:AddListButton("Scn_Modding_P2P_Options")  -- Placeholder for modding P2P options
    self:AddListButton("Scn_Online_Info")  -- Placeholder for online info

    OnlineOptionLog:Log("Menu built with options: " .. table.concat(self.listData, ", "))
    
    -- Fallback for empty list
    if #self.listData == 0 then
        self:AddDataEntry({text = "@ACT_NoInvites", widgetType = "EmptyList", buttonLegend = "Btn_Legend_Cancel"})
    end

    self:SetButtonLegend("btn_legend_select,btn_legend_exit")
end

function OnlineMP_Options:SelectItem()
    local item = self.listData[self.selectedIndex]  -- Get the selected item
    if not item then return end

    -- Debug print to check item selection
    print("Selected item: " .. item.id)  -- Add a print statement for debugging
    OnlineOptionLog:Log("Selected item: " .. item.id)

    if item.id == "Scn_LockUnlock_Game" then
        SessionLock:ToggleLock(self)
    elseif item.id == "Scn_ViewPlayers" then
        SessionPlayers:ShowPlayers(self)
    elseif item.id == "Scn_Friends_List" then
        FriendsListMenu:ShowFriendsList(self)
    elseif item.id == "Scn_P2P_Options" then
        print("P2P Options selected")  -- Debugging print for P2P selection
        P2POptions:ShowP2POptions(self)
    elseif item.id == "Scn_Modding_P2P_Options" then
        ModdingP2POptions:ShowModdingOptions(self)
    elseif item.id == "Scn_Online_Info" then
        OnlineInfo:ShowInfo(self)
    else
        print("Unknown item selected.")  -- Debugging fallback
    end
end

function OnlineMP_Options:ShowMessagePopup()
    local popup = {
        title = self.popupTitle or "Notice",
        body = self.popupBody or "",
        list = "SharedText_Ok",
        buttonPrompts = "Btn_Legend_Select",
        onSelect = function() self:RequestExit() end,
        hideArrow = true,
        allowCancel = false
    }
    self.popupHandle = self:AddScreen({screenName = "Popup"})
    self:CallScreen(self.popupHandle, "SetUsingTable", popup, true)
end

function OnlineMP_Options:IsHost()
    local hostID = Players_GetHostPlayerID()
    return hostID == self.InstanceData.playerNum
end

function OnlineMP_Options:onKeyDown(t)
    if t.action == KeyMap.GN_LST_SELECT then
        self:SelectItem()
    elseif t.action == KeyMap.GN_LST_UNPAUSE then
        self:GoBack()
    else
        OnlineMP_Options.superClass().onKeyDown(self, t)
    end
end

-- Close the log file when done (call this appropriately in your cleanup logic)
function OnlineMP_Options:CloseLog()
    OnlineOptionLog:Close()
end

return OnlineMP_Options
