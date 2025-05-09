local ava = require("AvaHelpers")
local ClassFactory = require("ClassFactory")
local Screen = require("Screen")
friends_add = ClassFactory.CreateClass("friends_add", Screen)
friends_add.ScreenDefinition = {
  SWF = "friends/friends_add",
  layer = "social_hub_popup",
  needsInput = true,
  needsKeyboardInput = true
}

function friends_add:MovieLoaded()
end

function friends_add:GoBack()
  self:CallFlashFunction("_root.CloseScreen")
end

function friends_add:ExitScreen(exitOption)
  self:RemoveScreen()
end

function friends_add:GetFriendName()
  if platform == "TARGET_WIN8" then
    UI_DisplayKeyboard("FE_Keyboard_AddFriend_Title", "FE_Keyboard_AddFriend_Desc", self.InstanceData.handle, "KeyboardInputCallback", "", 32)
  else
    KeyboardEmu.UI_DisplayKeyboard("FE_Keyboard_AddFriend_Title", "FE_Keyboard_AddFriend_Desc", self.InstanceData.handle, "KeyboardInputCallback", "", 32)
  end
end

function friends_add:AddFriend(friendName)
  UI_AddFriend(friendName, self.InstanceData.playerNum)
end

function friends_add:KeyboardInputCallback(keyboardInput)
  self:CallFlashFunction("_root.SetKeyboardInput", keyboardInput)
end

function friends_add:ShowRequestResult(t)
  local errString = "Success"
  if t == nil then
    return
  end
  if t.statusString ~= nil then
    errString = t.statusString
  end
  self:CallFlashFunction("_root.ShowInviteResult", errString)
  self.timerHandle = self:ScheduleTimer("ONE_SHOT", 1, "CloseScreen")
end

function friends_add:CloseScreen()
  self:RemoveScreen()
end

function friends_add:AllowFocusChange()
  return true
end

function friends_add:FocusLost()
  print("[friends_add] focus lost")
end

function friends_add:FocusGained()
  print("[friends_add] focus gained")
end
