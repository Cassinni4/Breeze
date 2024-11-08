-- friendslist_menu.lua
local FriendsListMenu = {}
local Steamworks = require("steamworks")  -- Require the Steamworks module

function FriendsListMenu:ShowFriendsList(session)
    -- Placeholder for displaying the friends list
    session.popupTitle = "Friends List"
    session.popupBody = "This feature is coming soon!"
    session:ShowMessagePopup()
end

return FriendsListMenu
