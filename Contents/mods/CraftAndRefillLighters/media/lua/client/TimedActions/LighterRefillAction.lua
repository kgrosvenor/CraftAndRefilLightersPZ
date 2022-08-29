require "TimedActions/ISBaseTimedAction"

LighterRefillAction = ISBaseTimedAction:derive("LighterRefillAction");

function LighterRefillAction:isValid()
    return true;
end

function LighterRefillAction:update()

end

function LighterRefillAction:waitToStart()
    return false;
end

function LighterRefillAction:start()
    self:setActionAnim("Craft");
end

function LighterRefillAction:stop()
    ISBaseTimedAction.stop(self);
end

function LighterRefillAction:perform()
    self.fuelSource:setUsedDelta(self.fuelSource:getUsedDelta() - 0.05);
    self.lighter:setUsedDelta(1);

    ISBaseTimedAction.perform(self);
end

function LighterRefillAction:new(character, lighter, fuelSource)
    local o = {};
    setmetatable(o, self);
    self.__index = self;

    o.lighter = lighter;
    o.fuelSource = fuelSource;
    o.character = character;

    o.maxTime = 50; -- Time take by the action
    if o.character:isTimedActionInstant() then o.maxTime = 1; end
    return o;
end