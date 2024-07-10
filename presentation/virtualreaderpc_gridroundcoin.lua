local ava = require("AvaHelpers")
local infHelpers = require("InfinityHelpers")
local ClassFactory = require("ClassFactory")
local VirtualReaderPC_GridCoin = require("VirtualReaderPC_GridCoin")
VirtualReaderPC_GridRoundCoin = ClassFactory.CreateClass("VirtualReaderPC_GridRoundCoin", VirtualReaderPC_GridCoin)
VirtualReaderPC_GridRoundCoin.ScreenDefinition = {
  SWF = "VirtualReader/VirtualReaderPC_GridRoundCoin",
  doLuaInput = true,
  priority = 0
}
function VirtualReaderPC_GridRoundCoin:onEnter()
  self.itemType = "RoundCoin"
  VirtualReaderPC_GridRoundCoin.superClass().onEnter(self)
  self.curMaxCoins = VirtualReaderPC_GetMaxNumCoins(false)
end
function VirtualReaderPC_GridRoundCoin:GetButtonLegend()
  if self.bSelectingGridItem == true or not self:GetControllerBeingUsed() then
    if not UI_IsPlalaGame() and not UI_IsTOGOOfflineGame() then
      return "Btn_Legend_VRPC_Select,btn_legend_vrpc_purchasecoin,btn_legend_vrpc_purchase_sparks,Btn_Legend_Back"
    else
      return "Btn_Legend_VRPC_Select,btn_legend_vrpc_purchasecoin,Btn_Legend_Back"
    end
  elseif not UI_IsPlalaGame() and not UI_IsTOGOOfflineGame() then
    return "Btn_Legend_VRPC_Select,Btn_Legend_VRPC_Remove,btn_legend_vrpc_purchase_sparks,Btn_Legend_Back"
  else
    return "Btn_Legend_VRPC_Select,Btn_Legend_VRPC_Remove,Btn_Legend_Back"
  end
end
function VirtualReaderPC_GridRoundCoin:GetGridButtonState(info)
  local state = "available"
  if info.Count == 0 then
    state = "available"
  end
  return state
end
function VirtualReaderPC_GridRoundCoin:UpdateCoinButtons()
  self.currentEquippedCoins = {}
  self.currentEquippedCoins = VirtualReaderPC_GetCurrentRoundCoins(self.InstanceData.playerNum)
  VirtualReaderPC_GridRoundCoin.superClass().UpdateCoinButtons(self)
end
function VirtualReaderPC_GridRoundCoin:SetCurrentCoinHelper(skuId, coinButtonIndex)
  VirtualReaderPC_SetCurrentRoundCoin(skuId, coinButtonIndex)
end
function VirtualReaderPC_GridRoundCoin:RemoveCoin(idx)
  VirtualReaderPC_RemoveRoundCoin(idx)
  VirtualReaderPC_GridRoundCoin.superClass().RemoveCoin(self, idx)
end
function VirtualReaderPC_GridRoundCoin:onKeyDown(t)
  if not self.movieLoadedAndFocused then
    return
  end
  if not t then
    return
  end
  if self.bIsPopupOpen == true then
    return
  end
  if t.action == KeyMap.GN_LST_PAGE_UP then
    local handle = UI.GetHandleFromName("VirtualReaderPC_Tabs", self.InstanceData.playerNum)
    if handle ~= UI.INVALID_UI_HANDLE then
      self:CallScreenFunctionByScreenName("VirtualReaderPC_Tabs", self.InstanceData.playerNum, "onKeyDown", t)
      self:OnTabChanged("characters")
    end
  elseif t.action == KeyMap.GN_LST_PAGE_DOWN then
    local handle = UI.GetHandleFromName("VirtualReaderPC_Tabs", self.InstanceData.playerNum)
    if handle ~= UI.INVALID_UI_HANDLE then
      self:CallScreenFunctionByScreenName("VirtualReaderPC_Tabs", self.InstanceData.playerNum, "onKeyDown", t)
      self:OnTabChanged("hexdisks")
    end
  elseif t.action == KeyMap.GN_LST_SELECT and self.bSelectingFilterCategories == false then
    if self.IsTypingFilter == false then
      if self.bIsFilterPanelOpen == true then
        self:SelectFilter()
      elseif self.bIsSortPanelOpen == true then
        self:SelectSort()
      elseif self:GetControllerBeingUsed() then
        if self.bSelectingGridItem == true then
          local option = self:CallFlashFunction("_root.GetCurrentElement", self:GetCurrentGrid())
          self.selectedItem = option
          self:DoSelectGridItem()
          self.bSelectingGridItem = false
          self:CallFlashFunction("_root.DeactivateGrid", self:GetCurrentGrid())
        else
          self:CallFlashFunction("_root.onSelectCurrentButton")
          self:CallFlashFunction("_root.ActivateGrid", self:GetCurrentGrid())
          self.bSelectingGridItem = true
        end
      else
        self:DoSelectGridItem()
      end
    end
  elseif t.action == KeyMap.GN_LST_WEST then
    if self.IsTypingFilter == false and self.bIsFilterPanelOpen == false and self.bIsSortPanelOpen == false then
      if self:GetControllerBeingUsed() then
        if self.bSelectingGridItem == true then
          local option = self:CallFlashFunction("_root.GetCurrentElement", self:GetCurrentGrid())
          self.selectedItem = option
          self:DoPurchaseItem()
        else
          VirtualReaderPC_GridRoundCoin.superClass().onKeyDown(self, t)
        end
      else
        self:DoPurchaseItem()
      end
    end
  elseif t.action == KeyMap.GN_LST_CANCEL then
    if self.bSelectingGridItem == true then
      self.selectedItem = nil
    end
    VirtualReaderPC_GridRoundCoin.superClass().onKeyDown(self, t)
  else
    VirtualReaderPC_GridRoundCoin.superClass().onKeyDown(self, t)
  end
  self:SetButtonLegend(self:GetButtonLegend())
end
function VirtualReaderPC_GridRoundCoin:UpdateItemGridForFiltersAndSorting()
  self.selectedItem = nil
  VirtualReaderPC_GridRoundCoin.superClass().UpdateItemGridForFiltersAndSorting(self)
end
function VirtualReaderPC_GridRoundCoin:SelectGridItem()
  if self.IsTypingFilter == true then
    self:UnselectFilterBar()
    return
  end
  if self.bIsFilterPanelOpen == true or self.bIsSortPanelOpen == true or self.bIsPopupOpen == true then
    return
  end
  local option = self:CallFlashFunction("_root.GetCurrentElement", self:GetCurrentGrid())
  if option ~= nil and option ~= "" then
    if option == self.selectedItem then
      self:DoSelectGridItem()
    else
      if self.selectedItem ~= nil then
        local lastData = self.listData[tonumber(self.selectedItem)]
        if lastData ~= nil then
          lastData.selected = false
          self:CallFlashFunction("_root.RebuildElement", self:GetCurrentGrid(), self.selectedItem)
        end
      end
      self.selectedItem = option
      local newData = self.listData[tonumber(self.selectedItem)]
      if newData ~= nil then
        newData.selected = true
        newData.fromMouseClick = true
        self:CallFlashFunction("_root.RebuildElement", self:GetCurrentGrid(), self.selectedItem)
        newData.fromMouseClick = false
      end
    end
  end
end
function VirtualReaderPC_GridRoundCoin:DoSelectGridItem()
  if self.selectedItem ~= nil and self.selectedItem ~= "" then
    self.IsTypingFilter = false
    local isItemLocked = self:GetItemData(tonumber(self.selectedItem), "locked")
    if isItemLocked then
      Sfx_Play2D("item_unavailable")
      self:DoPurchaseItem()
    else
      Sfx_Play2D("GenericList_Cancel")
      local newSkuId = self:GetItemData(tonumber(self.selectedItem), "skuId")
      self:SetCurrentCoin(newSkuId, self.currentCoinButton)
      self:UpdateCoinButtons()
      self:CallFlashFunction("_root.RebuildCoins")
      self:SetCoinButtonToolTip(self.currentCoinButton)
    end
  end
end
function VirtualReaderPC_GridRoundCoin:DoPurchaseItem()
  if self.selectedItem ~= nil and self.selectedItem ~= "" then
    local name = self:GetItemData(tonumber(self.selectedItem), "name")
    local sparkCost = self:GetItemData(tonumber(self.selectedItem), "sparkCost")
    self:ShowSparksPurchasePopup(name, sparkCost)
  end
end
function VirtualReaderPC_GridRoundCoin:PopupConfirm()
  if self.popupPurchasingItem == true then
    UI_IncrementSparks(-self.popupSparkCost)
    local newSkuId = self:GetItemData(tonumber(self.selectedItem), "skuId")
    Players_SetPurchasedRoundCoinsById(newSkuId, 1)
    local currentData = self.listData[tonumber(self.selectedItem)]
    if currentData == nil or currentData.name == nil or currentData.name == "" then
      return nil
    end
    local overallData = self.itemData[self.currentPage + 1][tonumber(self.selectedItem)]
    if overallData == nil then
      return nil
    end
    local newData = VirtualReaderPC_GetItemByName(currentData.name, self.InstanceData.playerNum)
    if newData == nil then
      return nil
    end
    currentData.text = tostring(newData.Count)
    currentData.state = self:GetGridButtonState(newData)
    currentData.locked = currentData.state == "available"
    overallData.Count = newData.Count
    self:CallFlashFunction("_root.RebuildElement", self:GetCurrentGrid(), self.selectedItem)
    self:UpdateCoinButtons()
    self:CallFlashFunction("_root.RebuildCoins")
    self:RefreshSparks()
  else
    self:GoToUpSellPC(self.defaultSparkUpSell)
  end
  VirtualReaderPC_GridRoundCoin.superClass().PopupConfirm(self)
end
return VirtualReaderPC_GridRoundCoin
