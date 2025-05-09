local ava = require("AvaHelpers")
local ClassFactory = require("ClassFactory")
local popupBase = require("popup_base")
FriendInvitePopup = ClassFactory.CreateClass("FriendInvitePopup", popupBase)
FriendInvitePopup.message = ""
FriendInvitePopup.friendID = 0

function FriendInvitePopup:GetTitle()
  return "@Scn_NewFriendInvite_Title"
end

function FriendInvitePopup:GetBody()
  return self.message
end

function FriendInvitePopup:GetList()
  return {
    "SharedText_Yes,SharedText_No"
  }
end

function FriendInvitePopup:SetBody(t)
  local translatedMessage = Translator_TranslateString("Scn_InviteNewFriend", false, self.InstanceData.playerNum)
  if translatedMessage ~= "" then
    self.message = string.format(translatedMessage, t.friendName)
  else
    self.message = ""
  end
  self.friendID = t.friendID
end

function FriendInvitePopup:SelectOption(option)
  if option == "SharedText_Yes" then
    Friend_AcceptFriend(self.friendID, self.InstanceData.playerNum)
  else
    Friend_DeclineFriend(self.friendID, self.InstanceData.playerNum)
  end
  self:RemoveScreen()
end
