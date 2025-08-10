local context = ...

context.OnPostprocessImportedAssets = function(importedPaths)
    for i, path in ipairs(importedPaths) do
        if (path:endsWith(".unity")) then
            EditorSceneManager.OpenScene(path);
        end
    end
end













context.OnScriptUnload = function()
    print("OnScriptUnload: " .. context.ScriptName)
end
context.OnScriptLoad = function()
    print("OnScriptLoad: " .. context.ScriptName)
end
context.Awake = function()
    print("Awake: " .. context.ScriptName)
end
context.OnEnable = function()
    print("OnEnable: " .. context.ScriptName)
end
context.OnDisable = function()
    print("OnDisable: " .. context.ScriptName)
end
context.OnDestroy = function()
    print("OnDestroy: " .. context.ScriptName)
end
