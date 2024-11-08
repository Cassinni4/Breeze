local SessionPlayers = {}

function SessionPlayers:ShowPlayers(session)
  local players = self:GetPlayersInSession()  -- This function should retrieve the list of players
  if #players == 0 then
    session.popupTitle = "No Players"
    session.popupBody = "There are no players in the session."
    session:ShowMessagePopup()
    return
  end

  -- Create a list to display the players
  local playerListBody = "Players in Session:\n"
  for _, player in ipairs(players) do
    playerListBody = playerListBody .. player.name .. "\n"  -- Assuming player has a 'name' field
  end

  session.popupTitle = "Players in Session"
  session.popupBody = playerListBody
  session:ShowMessagePopup()
end

function SessionPlayers:GetPlayersInSession()
  -- Replace this with actual logic to get the players in the session
  return {
    {name = "Player1"},
    {name = "Player2"},
    -- Add more players as needed
  }
end

return SessionPlayers
