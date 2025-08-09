-- assign script's 'context' table to a local variable
-- the context is where you define event functions and exchange data with C#
-- the ellipsis (...) represents the arguments passed when the script is loaded
local context = ...

-- Use these events to respond to script loading, including hot reload
function context.OnScriptUnload()
	--print(context.ScriptName .. " was changed and will hot reload.")
end
function context.OnScriptLoad()
	--print(context.ScriptName .. " was (re-)loaded.")
end

-- Unity events are Lua functions of the same name, defined in the 'context' table:
function context.OnEnable()
	--print("Hello, " .. context.ScriptName .. ".lua")
end


--print("---------------")
--local enumLength = #testEnum;
--print("length = " .. tostring(enumLength))
--print("testEnum = " .. tostring(testEnum) .. ", length = " .. tostring(#testEnum))
--
--for key, value in pairs(testEnum) do
--    print("\t" .. tostring(key) .. " = " .. tostring(value))
--end
--
--print("Fill = " .. tostring(testEnum.Fill))
--
--print("------...------")
--
--
--print("assign should raise error:")
--testEnum.Fill = 498


--[[
local enum =
{
    --values = {
    --    123,
    --    234,
    --},
    --names = {
    --    First = 1,
    --    Second = 2,
    --    Third = 1,
    --},
}
local lookup =
{
    First = 1,
    Second = 2,
    Third = 33,
}
local meta =
{
    values = {First = 3, Second = 4},
    __index = function(t, k, v)
        return lookup[k]
        --return rawget(t.values, rawget(t.names, k))
    end,
    __newindex = function(t, k, v)
        error("attempt to modify an enumeration", 2)
    end,
    __len = function(t)
        return 3
    end,
}
setmetatable(enum, meta)

enum.First = 3
print("First = " .. tostring(enum.First))
print("Second = " .. tostring(enum.Second))
print("Third = " .. tostring(enum.Third))
print("value count = " .. tostring(#enum))
]]
