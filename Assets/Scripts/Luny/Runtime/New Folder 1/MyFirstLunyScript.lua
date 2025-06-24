-- 'context' can be any name, the ellipsis (...) represents arguments passed to the script
local context = ...

-- Use these events to respond to script loading, including hot reload
function context.OnWillReloadScript()
	print(context.ScriptName .. " was changed and will hot reload.")
end
function context.OnDidLoadScript()
	print(context.ScriptName .. " was (re-)loaded.")
end

-- Unity events are Lua functions of the same name, defined in the 'context' table:
function context.Awake()
	print("Hello, " .. context.ScriptName .. ".lua")
end
