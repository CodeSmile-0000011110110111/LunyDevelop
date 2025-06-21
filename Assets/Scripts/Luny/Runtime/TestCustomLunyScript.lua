-- 'context' can be any name, the ellipsis (...) represents arguments passed to the script
local context = ...

-- Unity events are Lua functions of the same name, defined in the 'context' table:
function context.Awake()
	print("AWAKE Hello, " .. context.ScriptName .. ".lua on " .. tostring(context.gameObject))
end
function context.OnEnable() print("ONENABLE") end
function context.Start() print("START") end
function context.OnDisable() print("ONDISABLE") end
function context.OnDestroy() print("ONDESTROY") end
