-- 'context' can be any name, the ellipsis (...) represents arguments passed to the script
local context = ...

function context.OnWillReloadScript() print("RESOURCES OnWillReloadScript " .. context.ScriptName) end
function context.OnDidLoadScript() print("RESOURCES OnDidLoadScript " .. context.ScriptName) end
function context.OnValidate() print("RESOURCES OnValidate " .. context.ScriptName) end
function context.Awake() print("RESOURCES Awake " .. context.ScriptName) end
function context.OnEnable() print("RESOURCES OnEnable " .. context.ScriptName) end
function context.Start() print("RESOURCES Start " .. context.ScriptName) end
function context.OnDisable() print("RESOURCES OnDisable " .. context.ScriptName) end
function context.OnDestroy() print("RESOURCES OnDestroy " .. context.ScriptName) end
--function context.Update() print("RESOURCES Update XXXXXX  " .. context.ScriptName) end
--context.Update = nil
