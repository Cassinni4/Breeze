local ava = require("AvaHelpers")
local ClassFactory = require("ClassFactory")
local MenuBase = require("MenuBase")
friend_invites_u = ClassFactory.CreateClass("friend_invites_u", MenuBase)
friend_invites_u.ScreenDefinition = {
  SWF = "friends/friendsConsole"
}
friend_invites_u.movieIntroComplete = false
friend_invites_u.selectedFriend = ""
friend_invites_u.friendIndex = 1
friend_invites_u.friendDetails = {
  name,
  stars,
  status,
  lastSession
}
friend_invites_u.OptionsPopup = {
  InvitePopup = {
    GetTitle = function()
      return "Invite"
    end,
    GetBody = function(self)
      return "Wanna invite " .. self.parent.selectedFriend .. "?"
    end,
    GetList = function()
      return {
        "SharedText_Yes",
        "SharedText_No"
      }
    end,
    SelectOption = function(self, option)
      self.option = option
      self.parent:RemoveScreen(self.handle)
      if option == "SharedText_Yes" then
        InviteFriend(self.parent.selectedFriend, self.parent.InstanceData.playerNum)
        self.parent:CallFlashFunction("_root.SetStatusIcon", self.parent.selectedFriend, "ui/icons/icon_missionRepeat")
      end
      self.parent:CallFlashFunction("_root.SetScreenAlpha", 1)
    end
  },
  JoinPopup = {
    GetTitle = function()
      return "Join"
    end,
    GetBody = function(self)
      return "Join " .. self.parent.selectedFriend .. "'s game?"
    end,
    GetList = function()
      return {
        "SharedText_Yes",
        "SharedText_No"
      }
    end,
    SelectOption = function(self, option)
      self.option = option
      self.parent:RemoveScreen(self.handle)
      if option == "SharedText_Yes" then
        JoinFriend(self.parent.selectedFriend, self.parent.InstanceData.playerNum)
      end
      self.parent:CallFlashFunction("_root.SetScreenAlpha", 1)
    end
  },
  DeletePopup = {
    GetTitle = function()
      return "Delete"
    end,
    GetBody = function(self)
      return "Delete " .. self.parent.selectedFriend .. " as a friend?"
    end,
    GetList = function()
      return {
        "SharedText_Yes",
        "SharedText_No"
      }
    end,
    SelectOption = function(self, option)
      self.option = option
      self.parent:RemoveScreen(self.handle)
      if option == "SharedText_Yes" then
        DeleteFriend(self.parent.selectedFriend, self.parent.InstanceData.playerNum)
        self.parent:CallFlashFunction("_root.RemoveFriend", self.parent.selectedFriend)
      end
      self.parent:CallFlashFunction("_root.SetScreenAlpha", 1)
    end
  },
  BlockPopup = {
    GetTitle = function()
      return "Block"
    end,
    GetBody = function(self)
      return "Block " .. self.parent.selectedFriend .. " from your list?"
    end,
    GetList = function()
      return {
        "SharedText_Yes",
        "SharedText_No"
      }
    end,
    SelectOption = function(self, option)
      self.option = option
      self.parent:RemoveScreen(self.handle)
      if option == "SharedText_Yes" then
        BlockFriend(self.parent.selectedFriend, self.parent.InstanceData.playerNum)
        self.parent:CallFlashFunction("_root.RemoveFriend", self.parent.selectedFriend)
      end
      self.parent:CallFlashFunction("_root.SetScreenAlpha", 1)
    end
  },
  GetTitle = function()
    return "Friend Options"
  end,
  GetBody = function()
    return ""
  end,
  GetList = function()
    return {
      "Friends_Invite",
      "Friends_Join",
      "Friends_Chat",
      "Friends_Block",
      "Friends_Delete",
      "Options_Cancel"
    }
  end,
  SelectOption = function(self, option)
    self.option = option
    self.parent:RemoveScreen(self.handle)
    if option == "Friends_Invite" then
      self.InvitePopup.parent = self.parent
      self.InvitePopup.option = nil
      self.InvitePopup.handle = self.parent:AddScreen("friends_popup", 0, self.InvitePopup)
    elseif option == "Friends_Join" then
      self.JoinPopup.parent = self.parent
      self.JoinPopup.option = nil
      self.JoinPopup.handle = self.parent:AddScreen("friends_popup", 0, self.JoinPopup)
    elseif option == "Friends_Chat" then
      ChatWithFriend(self.parent.selectedFriend)
      self.parent:CallFlashFunction("_root.SetScreenAlpha", 1)
    elseif option == "Friends_Block" then
      self.BlockPopup.parent = self.parent
      self.BlockPopup.option = nil
      self.BlockPopup.handle = self.parent:AddScreen("friends_popup", 0, self.BlockPopup)
    elseif option == "Friends_Delete" then
      self.DeletePopup.parent = self.parent
      self.DeletePopup.option = nil
      self.DeletePopup.handle = self.parent:AddScreen("friends_popup", 0, self.DeletePopup)
    elseif option == "Options_Cancel" then
      self.parent:CallFlashFunction("_root.SetScreenAlpha", 1)
    end
    if option ~= "Options_Cancel" then
      LogUIScreenView(option, self.parent.InstanceData.playerNum)
    end
  end
}
friend_invites_u.friendData = {}

function friend_invites_u:onEnter()
  self.friendData = {}
  self.friendIndex = 1
  LogUIScreenView("Friends_Invites", self.InstanceData.playerNum)
  SetOnInviteScreen(true)
  self.timerHandle = -1
  self.doFriendSearch = false
  self:SetActionMap("GN_LST_SELECT,GN_LST_CANCEL,GN_LST_PREV_ITEM,GN_LST_NEXT_ITEM")
  friend_invites_u.superClass().onEnter(self)
end

function friend_invites_u:MovieLoaded()
  print("friend_invites_u:MovieLoaded")
  self.friendData = {}
  self.friendIndex = 1
  LogUIScreenView("Friends_Invites", self.InstanceData.playerNum)
  self.movieIntroComplete = true
  self:CallFlashFunction("_root.ShowClip", 2)
  self:CallFlashFunction("_root.SetupInput", 1)
  GetFriendsList()
  UI_UpdateFriendList()
end

function friend_invites_u:ExitScreen()
end

function friend_invites_u:onExit()
  self.movieIntroComplete = false
  self.friendIndex = 1
  self.friendData = {}
  SetOnInviteScreen(false)
  LogUIScreenViewStepTime("Friends_Invites", self.InstanceData.playerNum, "stop")
  friend_invites_u.superClass().onExit(self)
end

function friend_invites_u:RequestFriends()
  self.movieIntroComplete = true
end

function friend_invites_u:GetFriendList()
  print("Error: GetFriendList is no more!")
end

function friend_invites_u:GetCategories()
  return "@fe_Stars,@SharedText_Name,@fe_Online,@fe_In_Game,@fe_Last_Session"
end

function friend_invites_u:GetItemData(id, dataType)
  id = tonumber(id)
  if dataType == "text" then
    return self.friendData[id].name
  elseif dataType == "status" then
    return "static"
  else
    return ""
  end
end

function friend_invites_u:SelectItem()
  if platform == "TARGET_CAFE" then
    local friend = self.friendData[self.selectedIndex]
    local popup = {
      title = "@Scn_GameInvite_Title",
      body = "@Scn_FriendDownloadWarning",
      list = "SharedText_Ok,SharedText_Cancel",
      buttonPrompts = "Btn_Legend_Select,Btn_Legend_Cancel",
      onSelect = function(option)
        if option == "SharedText_Ok" then
          self:SelectItemInternal()
        end
      end,
      hideArrow = true,
      allowCancel = true
    }
    self.popupHandle = self:AddScreen({screenName = "Popup"})
    self:CallScreen(self.popupHandle, "SetUsingTable", popup, true)
    return
  end
  self:SelectItemInternal()
end

function friend_invites_u:SelectItemInternal()
  if self.popupHandle and not System_InFrontEndOld() then
    self:SetScreenFocus(false, true)
  end
  if System_InFrontEndOld() then
    self:FriendSelected()
  else
    self:ShowUnsavedPopup()
  end
end

function friend_invites_u:ShowUnsavedPopup()
  if self.popupHandle then
    local screen = UI.GetScreenFromScreenHandle(self.popupHandle)
    if screen then
      self:ScheduleTimer("ONE_SHOT", 0.05, "ShowUnsavedPopup")
      return
    end
  end
  self.popupHandle = nil
  local popup = {
    title = "@Scn_GameInvite_Title",
    body = "@Scn_Save_UnsavedProgress",
    list = "SharedText_Ok,SharedText_Cancel",
    buttonPrompts = "Btn_Legend_Select,Btn_Legend_Cancel",
    onSelect = function(option)
      if option == "SharedText_Ok" then
        self:FriendSelected()
      end
    end,
    hideArrow = true,
    allowCancel = true
  }
  self.popupHandle = self:AddScreen({screenName = "Popup"})
  self:CallScreen(self.popupHandle, "SetUsingTable", popup, true)
end

function friend_invites_u:FriendSelected()
  self.movieIntroComplete = false
  local friend = self.friendData[self.selectedIndex]
  print("Joining Friend (", self.selectedIndex, ")")
  print("name = ", friend.name)
  JoinFriend(friend.name, 0)
  self:ExitScreen()
  Pause_UnPauseFromPausedScreenIfPaused(self.InstanceData.playerNum)
end

function friend_invites_u:AddFriendToList(t)
  self.friendData[self.friendIndex] = {}
  self.friendData[self.friendIndex].name = t.name
  self.friendData[self.friendIndex].stars = t.stars
  self.friendData[self.friendIndex].status = t.status
  self.friendData[self.friendIndex].lastSession = t.lastSession
  self.friendIndex = self.friendIndex + 1
end

function friend_invites_u:AllFriendsFound()
  if self.timerHandle ~= -1 then
    self:RemoveTimer(self.timerHandle)
  end
  if self.movieIntroComplete == true then
    print("LUA:  WE HAVE " .. #self.friendData .. " FRIENDS")
    if #self.friendData > 0 then
      self:CallFlashFunction("_root.InitScreen", #self.friendData)
      self:CallFlashFunction("_root.ShowClip", 0)
      self.timerHandle = self:ScheduleTimer("REPEAT", 10, "UpdateFriendList")
    else
      self:CallFlashFunction("_root.ShowClip", 1)
      self.timerHandle = self:ScheduleTimer("REPEAT", 10, "UpdateFriendList")
    end
  else
    self.timerHandle = self:ScheduleTimer("ONE_SHOT", 1, "AllFriendsFound")
  end
  self:CallFlashFunction("_root.Rebuild")
  self:GetButtonLegend()
end

function friend_invites_u:UpdateFriendList()
  UI_UpdateFriendList()
  if self.doFriendSearch == true then
    self:FriendSearch()
  end
  self.doFriendSearch = false
end

function friend_invites_u:UpdateFriendStatus(t)
  local friendIndex = self:FindFriendInTable(t.name)
  if 0 < friendIndex then
    if self.friendData[friendIndex].status ~= t.status then
      local inviteRemoved = false
      if self.friendData[friendIndex].status == "invited" and t.status == "online" then
        inviteRemoved = true
      end
      self.friendData[friendIndex].status = t.status
      self:CallFlashFunction("_root.UpdateFriendStatus", self.friendData[friendIndex].name, self.friendData[friendIndex].status)
      if inviteRemoved == true and platform == "TARGET_CAFE" then
        table.remove(self.friendData, friendIndex)
        self.friendIndex = self.friendIndex - 1
        if #self.friendData == 0 then
          self.doFriendSearch = true
        else
          self:CallFlashFunction("_root.Rebuild")
        end
      end
    end
  elseif t.status == "invited" then
    self.doFriendSearch = true
  end
end

function friend_invites_u:FriendSearch()
  if self.timerHandle ~= -1 then
    self:RemoveTimer(self.timerHandle)
  end
  self.friendIndex = 1
  self.friendData = {}
  self.timerHandle = -1
  self:CallFlashFunction("_root.ShowClip", 2)
  self:CallFlashFunction("_root.", 0)
  self:CallFlashFunction("_root.SetMenuTitle", "ACT_Invites")
  GetFriendsList()
  self:CallFlashFunction("_root.Rebuild")
end

function friend_invites_u:FindFriendInTable(name)
  local reqIndex = -1
  for i = 1, #self.friendData do
    if self.friendData[i].name == name then
      reqIndex = i
    end
  end
  return reqIndex
end

function friend_invites_u:AddNewFriend()
  self:RemoveScreen()
  self:AddScreen("friends_add")
  LogUIScreenView("Friends_Add", self.InstanceData.playerNum)
  self.friendIndex = 1
  self.friendData = {}
end

function friend_invites_u:ViewFriendInvites()
  self:RemoveScreen()
  self:AddScreen({
    screenName = "Activity_InviteList",
    playerNum = self.InstanceData.playerNum,
    attachHandle = UI.containerHandle
  })
end

function friend_invites_u:GetEmptyListMsg()
  return "@FE_NoFriendsFound"
end

function friend_invites_u:PrintFriends()
  for i = 1, #self.friendData do
    print("Friend - ", self.friendData[i].name, "\t")
    print("Stars - ", self.friendData[i].stars, "\t")
    print("Status - ", self.friendData[i].status, "\t")
    print("Last Session - ", self.friendData[i].lastSession, "\n")
  end
end

function friend_invites_u:SelectMenuOption(option)
  if option == "ID_ADD_FRIEND" then
    self:AddNewFriend()
  elseif option == "ID_VIEW_INVITES" then
    self:ViewFriendInvites()
  end
end

function friend_invites_u:SortFriends(sortKey)
  if sortKey == 0 then
    table.sort(self.friendData, function(index1, index2)
      return index1.stars < index2.stars
    end)
  elseif sortKey == 1 then
    table.sort(self.friendData, function(index1, index2)
      return string.lower(index1.name) < string.lower(index2.name)
    end)
  elseif sortKey == 2 then
    table.sort(self.friendData, function(index1, index2)
      return string.lower(index1.onlineStatus) > string.lower(index2.onlineStatus)
    end)
  elseif sortKey == 3 then
    table.sort(self.friendData, function(index1, index2)
      return string.lower(index1.inGameStatus) > string.lower(index2.inGameStatus)
    end)
  elseif sortKey == 4 then
    table.sort(self.friendData, function(index1, index2)
      return string.lower(index1.lastSession) < string.lower(index2.lastSession)
    end)
  end
end

function friend_invites_u:GetItems()
  local list = ""
  for i = 1, #self.friendData do
    list = list .. i .. ","
  end
  if 0 < #list then
    list = string.sub(list, 0, #list - 1)
  end
  local retT = ava.splitToTable(list, ",")
  if #retT == 0 then
    retT = nil
  end
  return retT
end

function friend_invites_u:GoBack()
  print("friend_invites_u:GoBack")
  self.closeOption = "cancel"
  self:CallFlashFunction("_root.CloseScreen")
end

function friend_invites_u:GetNoResultsString()
  return "@ACT_NoInvites"
end

function friend_invites_u:GetButtonLegend(friendName)
  local legend = "Btn_Legend_Select,Btn_Legend_Exit"
  if #self.friendData == 0 then
    legend = "Btn_Legend_Exit"
  end
  self:SetButtonLegend(legend)
  return legend
end

function friend_invites_u:GetButtonLegend2(friendName)
  return ""
end

function friend_invites_u:onKeyDown(t)
  if not t then
    return
  end
  if t.action == KeyMap.GN_LST_SELECT and #self.friendData > 0 then
    self:SelectItem()
  elseif t.action == KeyMap.GN_LST_NEXT_ITEM then
    self:CallFlashFunction("_root.NextElement", true, false)
  elseif t.action == KeyMap.GN_LST_PREV_ITEM then
    self:CallFlashFunction("_root.PreviousElement", true, false)
  elseif t.action == KeyMap.GN_LST_UNPAUSE or t.action == KeyMap.GN_LST_CANCEL then
    self:RequestExit()
  end
  friend_invites_u.superClass().onKeyDown(self, t)
end
