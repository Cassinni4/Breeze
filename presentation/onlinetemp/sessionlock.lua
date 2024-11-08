local SessionLock = {}

function SessionLock:ToggleLock(session)
  local isLocked = UI_GameIsLocked()
  
  if isLocked then
    self:UnlockSession(session)
  else
    self:LockSession(session)
  end
end

function SessionLock:LockSession(session)
  UI_LockGame()
  session.popupTitle = "Session Locked"
  session.popupBody = "Your session has been locked."
  session:ShowMessagePopup()
end

function SessionLock:UnlockSession(session)
  UI_UnlockGame()
  session.popupTitle = "Session Unlocked"
  session.popupBody = "Your session has been unlocked."
  session:ShowMessagePopup()
end

return SessionLock
