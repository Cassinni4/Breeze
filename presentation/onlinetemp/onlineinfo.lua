-- onlineinfo.lua
local OnlineInfo = {}

function OnlineInfo:ShowInfo(session)
    -- Placeholder content for the online info
    session.popupTitle = "Online Info"
    session.popupBody = "This feature is coming soon!"  -- Placeholder message
    session:ShowMessagePopup()
end

return OnlineInfo
