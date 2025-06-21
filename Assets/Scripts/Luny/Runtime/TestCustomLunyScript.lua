-- 'context' can be any name, the ellipsis (...) represents arguments passed to the script
local context = ...

function context.OnWillReloadScript() print("OnWillReloadScript " .. context.ScriptName) end
function context.OnDidLoadScript() print("OnDidLoadScript " .. context.ScriptName) end
function context.OnValidate() print("OnValidate " .. context.ScriptName) end
function context.Awake() print("Awake " .. context.ScriptName) end
function context.OnEnable() print("OnEnable " .. context.ScriptName) end
function context.Start() print("Start " .. context.ScriptName) end
function context.OnDisable() print("OnDisable " .. context.ScriptName) end
function context.OnDestroy() print("OnDestroy " .. context.ScriptName) end
--function context.Update() print("Update XXXXXX  " .. context.ScriptName) end
