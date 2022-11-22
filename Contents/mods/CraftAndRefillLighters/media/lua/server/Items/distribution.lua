require 'Items/SuburbsDistributions'
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"

--Male Zombie Drops
table.insert(SuburbsDistributions["all"]["inventorymale"].items, "CraftAndRefillLighters.SwanLighterFluid");
table.insert(SuburbsDistributions["all"]["inventorymale"].items, 7);

--Female Zombie Drops
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, "CraftAndRefillLighters.SwanLighterFluid");
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, 5);

--Store counter, tobacco section
table.insert(ProceduralDistributions["list"]["StoreCounterTobacco"].items, "CraftAndRefillLighters.SwanLighterFluid");
table.insert(ProceduralDistributions["list"]["StoreCounterTobacco"].items, 35);

--DishCabinetGeneric
table.insert(ProceduralDistributions["list"]["DishCabinetGeneric"].items, "CraftAndRefillLighters.SwanLighterFluid");
table.insert(ProceduralDistributions["list"]["DishCabinetGeneric"].items, 5);

--Kitchen canned food cupboards
table.insert(ProceduralDistributions["list"]["KitchenCannedFood"].items, "CraftAndRefillLighters.SwanLighterFluid");
table.insert(ProceduralDistributions["list"]["KitchenCannedFood"].items, 5);

--Kitchen pots cupboards
table.insert(ProceduralDistributions["list"]["KitchenPots"].items, "CraftAndRefillLighters.SwanLighterFluid");
table.insert(ProceduralDistributions["list"]["KitchenPots"].items, 10);

--Kitchen dishes cupboards
table.insert(ProceduralDistributions["list"]["CrateDishes"].items, "CraftAndRefillLighters.SwanLighterFluid");
table.insert(ProceduralDistributions["list"]["CrateDishes"].items, 3);

--Gardening store
table.insert(ProceduralDistributions["list"]["GardenStoreMisc"].items, "CraftAndRefillLighters.SwanLighterFluid");
table.insert(ProceduralDistributions["list"]["GardenStoreMisc"].items, 5)

--Gigamart housewares
table.insert(ProceduralDistributions["list"]["GigamartHousewares"].items, "CraftAndRefillLighters.SwanLighterFluid");
table.insert(ProceduralDistributions["list"]["GigamartHousewares"].items, 25);

--Gigamart tools
table.insert(ProceduralDistributions["list"]["GigamartTools"].items, "CraftAndRefillLighters.SwanLighterFluid");
table.insert(ProceduralDistributions["list"]["GigamartTools"].items, 25);

--Mechanic shelf miscellaneous
table.insert(ProceduralDistributions["list"]["MechanicShelfMisc"].items, "CraftAndRefillLighters.SwanLighterFluid");
table.insert(ProceduralDistributions["list"]["MechanicShelfMisc"].items, 4);