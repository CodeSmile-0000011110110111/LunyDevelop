-- 'context' can be any name, the ellipsis (...) represents arguments passed to the script
local context = ...

function context.OnWillReloadScript() print("STREAMING OnWillReloadScript " .. context.ScriptName) end
function context.OnDidLoadScript() print("STREAMING OnDidLoadScript " .. context.ScriptName) end
function context.OnValidate() print("STREAMING OnValidate " .. context.ScriptName) end
function context.Awake() print("STREAMING Awake " .. context.ScriptName) end
function context.OnEnable() print("STREAMING OnEnable " .. context.ScriptName) end
function context.Start() print("STREAMING Start " .. context.ScriptName) end
function context.OnDisable() print("STREAMING OnDisable " .. context.ScriptName) end
function context.OnDestroy() print("STREAMING OnDestroy " .. context.ScriptName) end
--function context.Update() print("STREAMING Update XXXXXX  " .. context.ScriptName) end
--context.Update = nil
