require "TimedActions/ISBaseTimedAction"

EmptyRefillAction = ISBaseTimedAction:derive("EmptyRefillAction");

function EmptyRefillAction:isValid()
    return true;
end

function EmptyRefillAction:update()

end

function EmptyRefillAction:waitToStart()
    return false;
end

function EmptyRefillAction:start()
    self:setActionAnim("Craft");
end

function EmptyRefillAction:stop()
    ISBaseTimedAction.stop(self);
end

function EmptyRefillAction:perform()
    self.character:getInventory():Remove(self.emptyLighter);
    self.fuelSource:setUsedDelta(self.fuelSource:getUsedDelta() - 0.05);
    self.character:getInventory():AddItem("Base.Lighter");

    ISBaseTimedAction.perform(self);
end

function EmptyRefillAction:new(character, emptyLighter, fuelSource)
    local o = {};
    setmetatable(o, self);
    self.__index = self;

    o.emptyLighter = emptyLighter;
    o.fuelSource = fuelSource;
    o.character = character;

    o.maxTime = 75; -- Time take by the action
    if o.character:isTimedActionInstant() then o.maxTime = 1; end
    return o;
end