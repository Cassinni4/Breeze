local ava = require("AvaHelpers")
local lmHelpers = require("LogicMenuHelpers")
local KeyMap = require("KeyMap")
local ClassFactory = require("ClassFactory")
local MenuBase = require("MenuBase")
local LogicAttributesBase = ClassFactory.CreateClass("LogicAttributesBase", MenuBase)
LogicAttributesBase.ScreenDefinition = {
  SWF = "ListMenu/Menu",
  priority = 1,
  needsKeyboardInput = true
}
LogicAttributesBase.DataTable = nil
LogicAttributesBase.PC_KEYBOARD_ENTER = 13
LogicAttributesBase.Menu = {}
LogicAttributesBase.listData = {}
LogicAttributesBase.DataTable = {}
if build == "TOYBOX_TOGO" and (_G.platform == "TARGET_WIN32" or _G.platform == "TARGET_WIN8") then
  LogicAttributesBase.TextInputTable = {}
  LogicAttributesBase.DebugWhiteWash = false
end
function LogicAttributesBase:onEnter()
  LogicAttributesBase.superClass().onEnter(self)
  self.useProfanityFilter = _G.platform == "TARGET_CAFE"
  if build == "TOYBOX_TOGO" and (_G.platform == "TARGET_WIN32" or _G.platform == "TARGET_WIN8") then
    self.TextInputTable = {}
    self.usingText = false
  end
end
function LogicAttributesBase:onExit()
  if build == "TOYBOX_TOGO" and (_G.platform == "TARGET_WIN32" or _G.platform == "TARGET_WIN8") and self.usingText == true then
    UI_HideCursor()
  end
  LogicAttributesBase.superClass().onExit(self)
end
function LogicAttributesBase:MovieLoaded()
  LogicAttributesBase.superClass().MovieLoaded(self)
  local option = self:CallFlashFunction("_root.GetCurrentElement")
  _G.UI_UpdateLogicSelection(self.InstanceData.playerNum, ava.Untranslate(self.listData[tonumber(option)].text), self.DataTable.message)
end
function LogicAttributesBase:GetHeaderLabel()
  return "@Logic_Attributes"
end
function LogicAttributesBase:GetInitialValue(id)
  local dataTable = self.listData[tonumber(id)]
  if dataTable == nil then
    return nil
  elseif dataTable.initialValue == nil then
    return nil
  elseif dataTable.widgetType == "Slider" then
    return lmHelpers.NormalizedValue(dataTable.initialValue, dataTable.minValue, dataTable.maxValue)
  else
    return dataTable.initialValue
  end
end
function LogicAttributesBase:BuildListTableFromMenu(source, level, parent, delimiter)
  self.listData = {}
  self.Menu = lmHelpers.CreateList(source, level, parent, delimiter, "name")
  for _, value in ipairs(self.Menu) do
    local listTable = {
      id = tostring(value.id),
      text = "@" .. value.text,
      option = "",
      widgetType = "Button",
      buttonState = "",
      buttonLegend = "Btn_Legend_Select,Btn_Legend_Back",
      get = function(self, id)
        return self:GetValue(id)
      end,
      set = function(self, id, val)
        return self:SetValue(id, val)
      end,
      attributeType = value.attributeType,
      hasChildren = value.hasChildren
    }
    if listTable.hasChildren == false then
      if listTable.attributeType == _G.LogicUI.DescriptionType_Value or listTable.attributeType == _G.LogicUI.DescriptionType_Int then
        if value.tickMarks == nil then
          listTable.tickMarks = 10
        else
          listTable.tickMarks = value.tickMarks
        end
        listTable.timeBased = value.timeBased
        listTable.minValue = value.minValue
        listTable.maxValue = value.maxValue
        if listTable.tickMarks > lmHelpers.MAX_TICKMARKS then
          listTable.widgetType = "NumberInput"
          if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
            listTable.buttonLegend = "Btn_Accept,Btn_Legend_Back"
          end
        else
          listTable.widgetType = "Slider"
          listTable.buttonLegend = "Btn_Legend_ChangeSliderOption,Btn_Legend_Back"
        end
      elseif listTable.attributeType == _G.LogicUI.DescriptionType_Bool then
        if value.initialValue == 1 then
          listTable.option = true
        else
          listTable.option = false
        end
        listTable.widgetType = "Toggle"
        listTable.buttonLegend = "Btn_Legend_ChangeToggleOption,Btn_Legend_Back"
      elseif listTable.attributeType == _G.LogicUI.DescriptionType_DropDown or listTable.attributeType == _G.LogicUI.DescriptionType_Team then
        local labelTable = ava.splitToTable(value.label, "|")
        if #labelTable == 1 then
          listTable.text = "@" .. value.label
        elseif level <= #labelTable then
          listTable.text = "@" .. labelTable[level]
        else
          listTable.text = "@" .. value.label
        end
        local initialValueTable = ava.splitToTable(value.initialValue, "|")
        if #initialValueTable == 1 then
          if value.textIsPretranslated then
            listTable.option = value.initialValue
          else
            listTable.option = "@" .. value.initialValue
          end
        else
          listTable.option = "@" .. initialValueTable[#initialValueTable]
        end
        listTable.widgetType = "Option"
      elseif listTable.attributeType == _G.LogicUI.DescriptionType_Text then
        listTable.widgetType = "TextInput"
        if build == "TOYBOX_TOGO" and (_G.platform == "TARGET_WIN32" or _G.platform == "TARGET_WIN8") then
          listTable.callback = "TextInputChangedCallback"
          listTable.needsInput = true
          self.usingText = true
          listTable.initialValue = listTable.text
        end
      else
        listTable.widgetType = "Button"
      end
      if listTable.attributeType == _G.LogicUI.DescriptionType_Text then
        listTable.optionValue = string.gsub(value.initialValue, "$TRANSLATE_", "@")
      else
        listTable.optionValue = value.initialValue
      end
    elseif listTable.attributeType == _G.LogicUI.DescriptionType_DropDown or listTable.attributeType == _G.LogicUI.DescriptionType_Team then
      local labelTable = ava.splitToTable(value.label, "|")
      if #labelTable == 1 then
        listTable.text = "@" .. value.label
      elseif level <= #labelTable then
        listTable.text = "@" .. labelTable[level]
      else
        listTable.text = "@" .. value.label
      end
    end
    if value.sortIndex then
      listTable.sortIndex = value.sortIndex
    end
    self:AddDataEntry(listTable)
  end
  if build == "TOYBOX_TOGO" and (_G.platform == "TARGET_WIN32" or _G.platform == "TARGET_WIN8") and self.usingText ~= nil and self.usingText == true then
    UI_ShowCursor()
  end
end
if build == "TOYBOX_TOGO" and (_G.platform == "TARGET_WIN32" or _G.platform == "TARGET_WIN8") then
  function LogicAttributesBase:TextInputChangedCallback(textInput)
    if self.TextInputTable ~= nil then
      for i = 1, #self.TextInputTable do
        if self.TextInputTable[i] ~= nil and tonumber(self.TextInputTable[i].id) == tonumber(self.keyboardDescId) then
          self.TextInputTable[i].text = textInput
          return
        end
      end
      local tempTable = {
        id = self.keyboardDescId,
        text = textInput
      }
      table.insert(self.TextInputTable, tempTable)
    end
  end
  function LogicAttributesBase:WhiteWashTextInputs()
    if self.popupHandle ~= nil then
      local screen = UI.GetScreenFromScreenHandle(self.popupHandle)
      if screen then
        self:ScheduleTimer("ONE_SHOT", 0.1, "WhiteWashTextInputs")
        return
      end
    end
    self:DisableScreenInput()
    for i = 1, #self.TextInputTable do
      if self.TextInputTable[i] ~= nil then
        if self.DebugWhiteWash then
          print("WhiteWashLoop: TextInputTable[" .. i .. "] is valid and its id is " .. self.TextInputTable[i].id .. ", and its text is " .. self.TextInputTable[i].text)
        end
        for v = 1, #self.listData do
          if self.DebugWhiteWash and self.listData[v] ~= nil then
            print("WhiteWashLoop: listData[" .. v .. "] is valid and its id is " .. self.listData[v].id .. ", and its widgetType is " .. self.listData[v].widgetType)
          end
          if self.listData[v] ~= nil and self.listData[v].widgetType == "TextInput" and tonumber(self.listData[v].id) == tonumber(self.TextInputTable[i].id) then
            if self.DebugWhiteWash then
              print("WhiteWashLoop: found matching index for TextInputTable[" .. i .. "] at listData[" .. v .. "]")
            end
            if self.TextInputTable[i].text ~= self.listData[v].optionValue then
              if self.DebugWhiteWash then
                print("WhiteWashLoop: WhiteWashing TextInputTable[" .. i .. "]")
              end
              self.entryResolved = false
              --self:LaunchConnectionStatusPopUp(self.TextInputTable[i].id)
              self.selectedId = v
              local callbackData = {}
              callbackData.text = self.TextInputTable[i].text
              callbackData.severity = "allow"
              callbackData.tags = "TextToy_Accepted"
              table.remove(self.TextInputTable, i)
              self:WhiteWashTextCallback(callbackData)
              --_G.UI_WhiteWashText(self.TextInputTable[i].text, self.InstanceData.handle, "WhiteWashTextCallback")
             

              return
            end
          end
        end
      end
    end
    self:GoBack()
  end
  function LogicAttributesBase:SelectedItemChanged(id, visibleIndex)
    local nID = tonumber(id)
    local data = self.listData[nID]
    if data and data.widgetType == "TextInput" then
      self.keyboardDescId = tonumber(data.id)
    end
    self.selectedId = id
    self.selectedIndex = tonumber(self.selectedId)
    self.visibleIndex = visibleIndex
    local data = self.listData[self.selectedIndex]
    if data and data.buttonLegend then
      self:SetButtonLegend(data.buttonLegend)
    end
  end
end
function LogicAttributesBase:GetValue(id)
  local data = self.listData[tonumber(id)]
  if data.widgetType == "Slider" then
    if data.optionValue == nil or data.minValue == nil or data.maxValue == nil then
      return 0
    else
      return lmHelpers.NormalizedValue(data.optionValue, data.minValue, data.maxValue)
    end
  else
    return data.optionValue
  end
end
function LogicAttributesBase:SetValue(id, val)
  local data = self.listData[tonumber(id)]
  local valueChanged = false
  if data.widgetType == "Slider" then
    local newValue = lmHelpers.UnNormalizedValue(val, data.minValue, data.maxValue)
    if data.optionValue ~= newValue then
      data.optionValue = newValue
      valueChanged = true
    end
  elseif data.widgetType == "NumberInput" and data.tickMarks ~= nil then
    local newValue = tonumber(val)
    if data.optionValue ~= newValue then
      data.optionValue = newValue
      valueChanged = true
    end
  elseif data.optionValue ~= val then
    data.optionValue = val
    valueChanged = true
  end
  if valueChanged then
    _G.UI_SetAttributeValue(self.InstanceData.playerNum, data.id, data.optionValue)
  end
end
function LogicAttributesBase:SelectItem()
  if type(self.selectedIndex) ~= "number" then
    print("WARNING!!  Non-numeric option (" .. self.selectedIndex .. ") passed in!!!")
    return
  end
  local data = self.listData[self.selectedIndex]
  if not data then
    return
  end
  if data.hasChildren == true then
    local className = self:GetElementClassName(self.selectedIndex)
    if className == "Option" then
      _G.UI_SelectAttributeOption(self.InstanceData.playerNum, data.id)
    else
      local optionName = ava.Untranslate(self:GetTextByID(self.selectedIndex))
      self.SubAttributesHandle = self:AddScreen({
        screenName = "LogicSubAttributes"
      })
      self:CallScreenFunction(self.SubAttributesHandle, "SetParent", self, true)
      local t = {
        parent = optionName,
        Options = self.DataTable.Options,
        message = self.DataTable.message
      }
      self:CallScreenFunction(self.SubAttributesHandle, "SetUsingTable", t, true)
      _G.UI_LogicOptionCategoryPicked(optionName)
    end
  elseif data.widgetType == "TextInput" then
    if data.tickMarks == nil then
      --local onlineErrors = _G.UI_CanEditTextToy(self.InstanceData.playerNum)
      local onlineErrors = ""
      if onlineErrors == "" then
        local displayText = data.optionValue
        if string.sub(data.optionValue, 1, 1) == "@" then
          local translation = ava.Untranslate(data.optionValue)
          displayText = _G.Translator_TranslateString(translation, false, self.InstanceData.playerNum)
          if displayText == nil then
            displayText = data.optionValue
          end
        end
        if _G.platform == "TARGET_WIN8" then
          UI_DisplayKeyboard("TextToy_Text_Entry", "TextToy_Enter_Text", self.InstanceData.handle, "KeyboardDescInputCallback", displayText, 144, _G.KeyboardEmu.DEFAULT_KEYBOARD, self.useProfanityFilter)
        else
          _G.KeyboardEmu.UI_DisplayKeyboard("TextToy_Text_Entry", "TextToy_Enter_Text", self.InstanceData.handle, "KeyboardDescInputCallback", displayText, 144, _G.KeyboardEmu.DEFAULT_KEYBOARD, self.useProfanityFilter)
        end
      else
        self:LaunchConnectionStatusPopUp(nil)
        if self.popupHandle ~= nil then
          local statusResult = {}
          statusResult.errCode = 1
          statusResult.errString = onlineErrors
          self:CallScreenFunction(self.popupHandle, "ShowConnectionResult", statusResult)
        end
      end
    end
  elseif data.widgetType == "NumberInput" then
    if build == "TOYBOX_TOGO" and platform == "TARGET_WIN8" and not self:GetTouchBeingUsed() then
      return
    end
    local translatedRange = _G.Translator_TranslateString("TextToy_Enter_RangedNumber", true, self.InstanceData.playerNum)
    local s = string.gsub(translatedRange, "%%d", tostring(data.minValue), 1)
    local final = string.gsub(s, "%%d", tostring(data.maxValue), 1)
    if platform == "TARGET_WIN8" then
      UI_DisplayKeyboard("TextToy_Text_Entry", final, self.InstanceData.handle, "NumericKeyboardDescInputCallback", tostring(data.optionValue), 10, _G.KeyboardEmu.NUMERIC_KEYBOARD)
    else
      _G.KeyboardEmu.UI_DisplayKeyboard("TextToy_Text_Entry", final, self.InstanceData.handle, "NumericKeyboardDescInputCallback", tostring(data.optionValue), 10, _G.KeyboardEmu.NUMERIC_KEYBOARD)
    end
  else
    local className = self:GetElementClassName(self.selectedIndex)
    if className == "Option" then
      _G.UI_SelectAttributeOption(self.InstanceData.playerNum, data.id)
    end
  end
end
function LogicAttributesBase:onKeyDown(t)
  if t.action == KeyMap.GN_LST_SELECT then
    if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
      local nID = tonumber(self.selectedId)
      local data = self.listData[nID]
      if not data then
        return
      end
      if data.widgetType == "NumberInput" then
        if data.tickMarks > lmHelpers.MAX_TICKMARKS then
          local result = self:CallFlashFunction("_root.GetElement", self.selectedId)
          if self:ValidateNumericInput(result) then
            self:SetValue(self.selectedId, result)
            _G.UI_SetAttributeValue(self.InstanceData.playerNum, data.id, data.optionValue)
          else
            self:CallFlashFunction("_root.SetElement", self.selectedId, data.optionValue)
          end
        end
      else
        self:SelectItem()
      end
    else
      self:SelectItem()
    end
  elseif t.action == KeyMap.GN_LST_CANCEL then
    self.DataTable.selection = "accept"
    _G.Sfx_Play2D("GenericList_Cancel")
    if build == "TOYBOX_TOGO" and (_G.platform == "TARGET_WIN32" or _G.platform == "TARGET_WIN8") then
      self:WhiteWashTextInputs()
    else
      self:GoBack()
    end
  else
    LogicAttributesBase.superClass().onKeyDown(self, t)
    if t.action == KeyMap.GN_LST_PREV_ITEM or t.action == KeyMap.GN_LST_NEXT_ITEM then
      local data = self.listData[self.selectedIndex]
      if not data then
        return
      end
      _G.UI_UpdateLogicSelection(self.InstanceData.playerNum, ava.Untranslate(data.text), self.DataTable.message)
    end
  end
end
function LogicAttributesBase:DIDOffLine()
  if self.popupHandle ~= nil then
    local statusResult = {}
    statusResult.errCode = 1
    statusResult.errString = "TextToy_Not_DIDOnline"
    self:CallScreenFunction(self.popupHandle, "ShowConnectionResult", statusResult)
  end
end
function LogicAttributesBase:NumericKeyboardDescInputCallback(keyboardInput)
  local nID = tonumber(self.selectedId)
  local data = self.listData[nID]
  if not data then
    return
  end
  if keyboardInput == nil then
    return
  elseif keyboardInput == "InvalidNumericInput" then
    self:DisplayInvalidInputPopup()
    return
  else
    local nInput = tonumber(keyboardInput)
    if nInput < self.listData[nID].minValue or nInput > data.maxValue then
      self:DisplayInvalidInputPopup()
      return
    end
  end
  self:SetValue(self.selectedId, keyboardInput)
  _G.UI_SetAttributeValue(self.InstanceData.playerNum, self.listData[nID].id, self.listData[nID].optionValue)
  self:CallFlashFunction("_root.SetElement", nID, self.listData[nID].optionValue)
end
function LogicAttributesBase:KeyboardDescInputCallback(keyboardInput)
  local nID = tonumber(self.selectedId)
  local data = self.listData[nID]
  if not data then
    return
  end
  if keyboardInput == nil then
    return
  end
  self.entryResolved = false
  if self.entryResolved == false then
    self:LaunchConnectionStatusPopUp(nID)
  end
  _G.UI_WhiteWashText(keyboardInput, self.InstanceData.handle, "WhiteWashTextCallback")
end
LogicAttributesBase.MyPopup = {
  GetTitle = function(self)
    return self.title
  end,
  GetBody = function(self)
    return self.body
  end,
  GetList = function(self)
    return "SharedText_Ok"
  end,
  SelectOption = function(self, _)
    self.parent:RemoveScreen({
      handle = self.parent.popupHandle
    })
  end
}
function LogicAttributesBase:LaunchConnectionStatusPopUp(option)
  local id = -1
  if option ~= nil and self.listData[tonumber(option)] ~= nil then
    id = self.listData[tonumber(option)].id
  end
  self.MyPopup.parent = self
  self.MyPopup.option = nil
  self.MyPopup.title = "My Popup Title"
  if id ~= nil then
    self.MyPopup.body = "You selected " .. id
  else
    self.MyPopup.body = "TextToy_Not_DIDOnline"
  end
  self.popupHandle = self:AddScreen({
    screenName = "TextServerStatus",
    playerNum = self.InstanceData.playerNum,
    dataProvider = self.MyPopup
  })
  if build == "TOYBOX_TOGO" and (_G.platform == "TARGET_WIN32" or _G.platform == "TARGET_WIN8") then
    self:CallScreen(self.popupHandle, "SetNeedsInput", false)
  end
end
function LogicAttributesBase:DisplayInvalidInputPopup()
  self.MyPopup.parent = self
  self.MyPopup.option = nil
  self.MyPopup.title = "InvalidInputTitle"
  self.MyPopup.body = "InvalidInputBody"
  self.popupHandle = self:AddScreen({
    screenName = "Popup",
    playerNum = self.InstanceData.playerNum,
    dataProvider = self.MyPopup
  })
end
function LogicAttributesBase:WhiteWashTextCallback(t)
  local text = t.text
  local severity = t.severity
  local tags = t.tags
  local nID = tonumber(self.selectedId)
  local data = self.listData[nID]
  if not data then
    return
  end
  local errorCode = 0
  severity = "allow"
  if severity == "allow" then
    errorCode = 0
    tags = "TextToy_Accepted"
  elseif severity == "replace" then
    errorCode = 1
    tags = "TextToy_Not_Accepted"
  elseif severity == "reject" then
    errorCode = 3
    text = "@TextToy_Rejected"
    tags = "TextToy_Not_Accepted"
  elseif severity == "error" then
    errorCode = 4
  end
  if self.popupHandle ~= nil then
    local statusResult = {}
    statusResult.errCode = errorCode
    statusResult.errString = tags
    statusResult.errString2 = text
    self:CallScreenFunction(self.popupHandle, "ShowConnectionResult", statusResult)
  end
  if errorCode == 0 then
    self:SetValue(self.selectedId, text)
    _G.UI_SetAttributeValue(self.InstanceData.playerNum, self.listData[nID].id, self.listData[nID].optionValue)
    self:CallFlashFunction("_root.SetElement", nID, self.listData[nID].optionValue)
    self.entryResolved = true
    if build == "TOYBOX_TOGO" and (_G.platform == "TARGET_WIN32" or _G.platform == "TARGET_WIN8") then
      self:WhiteWashTextInputs()
    end
  elseif build == "TOYBOX_TOGO" and (_G.platform == "TARGET_WIN32" or _G.platform == "TARGET_WIN8") then
    self:EnableScreenInput()
  end
end
function LogicAttributesBase:GetItemData(id, field)
  if id == nil then
    return
  end
  local data = self.listData[tonumber(id)]
  if data == nil then
    return nil
  end
  if field == "input" then
    return data.optionValue
  elseif field == "status" then
    return 0
  elseif field == "valueText" then
    if data.timeBased then
      local curTime = math.min(data.optionValue, 362399)
      local leftoverMinutes = curTime % 3600
      local hours = (curTime - leftoverMinutes) / 3600
      local mins = (leftoverMinutes - leftoverMinutes % 60) / 60
      local secs = leftoverMinutes % 60
      local curTimeMinSec = ""
      local timeFormatTable = _G.UI_GetTimeFormat()
      if hours > 0 then
        curTimeMinSec = tostring(hours) .. timeFormatTable.hourMinSeparator .. string.format("%02d", tostring(mins)) .. timeFormatTable.minSecSeparator .. string.format("%02d", tostring(secs))
      else
        curTimeMinSec = tostring(mins) .. timeFormatTable.minSecSeparator .. string.format("%02d", tostring(secs))
      end
      return curTimeMinSec
    else
      return data.optionValue
    end
  else
    return LogicAttributesBase.superClass().GetItemData(self, id, field)
  end
end
function LogicAttributesBase:CloseScreen()
  self.DataTable.selection = "cancel"
  self:RequestExit()
end
function LogicAttributesBase:ExitScreen()
  if self.DataTable.selection == "cancel" then
    self:CloseScreen()
  end
end
function LogicAttributesBase:ValidateNumericInput(input)
  return tonumber(input) ~= nil
end
return LogicAttributesBase
