local context = ...

context.OnPostprocessImportedAssets = function(importedPaths)
    for i, path in ipairs(importedPaths) do

        if (path:endsWith(".unity")) then
            print("Open created scene: " .. path)
            EditorSceneManager.OpenScene(path);
        end

    end
end
