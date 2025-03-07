Core.Inventory = {
  Open = function(id,data)
    if Config.Inventory == "ox_inventory" then 
      local exists = exports.ox_inventory:openInventory('stash', id)
      if not exists then 
        TriggerServerEvent("Dirk:Inventory:RegisterStash", id, data)
        Wait(2000)
        exports.ox_inventory:openInventory('stash', id)
      end      
    elseif Config.Inventory == "ps-inventory" or Config.Inventory == "qb-inventory" or Config.Inventory == "lj-inventory" or Config.Inventory == "qs-inventory" then 
      TriggerServerEvent("inventory:server:OpenInventory", "stash", "Stash_"..id, {maxweight = data.Weight, slots = data.Slots})
      TriggerEvent("inventory:client:SetCurrentStash", "Stash_"..id)
    elseif Config.Inventory == "mf-inventory" then 
      exports["mf-inventory"]:openOtherInventory(id)
    end 
  end,
}

RegisterNetEvent("Dirk:Inventory:Open", function(id, data)
  Core.Inventory.Open(id, data)
end)

