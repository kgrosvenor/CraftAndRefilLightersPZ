require "TimedActions/ISTimedActionQueue"

CraftAndRefillLighters = {}

-- When the Refill lighter action is clicked
function CraftAndRefillLighters.doFillGasAction(lighter, player, fuelSource)
    ISTimedActionQueue.add(LighterRefillAction:new(getSpecificPlayer(player), lighter, fuelSource));
end

-- Check inventory for used lighters and petrol containers with gas
function CraftAndRefillLighters.doCreateMenu(player, context, items)
    -- Find lighter items to add Refill context menu to
    for i, v in ipairs(items) do
        local item = v;
        if not instanceof(v, "InventoryItem") then
            item = v.items[1];
        end

        if item:getType() == "Lighter" and item:getUsedDelta() < 1 then
            local playerInv = getSpecificPlayer(player):getInventory();
            local drawn = false;
            for x = 0, playerInv:getItems():size() - 1 do
                local vItem = playerInv:getItems():get(x);
                if (vItem:hasTag("Petrol") or vItem:getType() == "PetrolCan") and vItem:getUsedDelta() > 0 then
                    if drawn == false then
                        local fuelSource = vItem;
                        context:addOption("Refill Lighter with " .. vItem:getName(), item, CraftAndRefillLighters.doFillGasAction, player, fuelSource);
                        drawn = true;
                    end
                end
            end
        end
    end
end

-- As soon as a player crafts a lighter, set usedDelta to 0
--
function CraftAndRefillLighters.DepleteGas(items, result, player)
    result:setUsedDelta(0);
end

Events.OnFillInventoryObjectContextMenu.Add(CraftAndRefillLighters.doCreateMenu);