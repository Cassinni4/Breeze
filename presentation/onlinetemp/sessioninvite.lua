local Steamworks = require("steamworks")
local FriendsList = require("friendslist")  -- Require the friends list module
local SteamInvite = {}

function SteamInvite:InvitePlayer(playerID)
    if not playerID then
        return "No player selected."
    end

    local success = Steamworks.SendInvite(playerID)
    return success and "Invitation sent!" or "Failed to send invitation."
end

function SteamInvite:OpenInviteMenu(session)
    print("OpenInviteMenu called")
    local friendsList = self:GetFriendsList()
    FriendsList:ShowFriendsMenu(session, friendsList)  -- Show the friends list menu
end

function SteamInvite:GetFriendsList()
    -- Replace this with actual logic to retrieve friends from Steam
    return {
        {id = "Friend1ID", name = "Friend1"},
        {id = "Friend2ID", name = "Friend2"},
        -- Add more friends as needed
    }
end

return SteamInvite
