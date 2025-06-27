-- assign script's 'context' table to a local variable
-- the context is where you define event functions and exchange data with C#
-- the ellipsis (...) represents the arguments passed when the script is loaded
local context = ...

-- Use these events to respond to script loading, including hot reload
function context.OnWillReloadScript()
	print(context.ScriptName .. " was changed and will hot reload.")
end
function context.OnDidLoadScript()
	print(context.ScriptName .. " was (re-)loaded.")
end

-- Unity events are Lua functions of the same name, defined in the 'context' table:
function context.OnEnable()
	print("Hello, " .. context.ScriptName .. ".lua")
end
