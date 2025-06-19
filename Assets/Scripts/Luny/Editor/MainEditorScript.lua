local context = ...
--context.EditorType = "ScriptableSingleton" -- default

print("Hello, MainEditorScript! Context: " .. tostring(context))

-- the context variables survive domain reload
context.ChangeCount = context.ChangeCount ~= nil and context.ChangeCount + 1 or 0
print("MainEditorScript change count = " .. tostring(context.ChangeCount))

-- print the contents of context
--print("context: " .. tostring(context))
--for k, v in pairs(context) do print("\t" .. tostring(k) .. " = " .. tostring(v)) end

-- run another script without context
--dofile("New Folder/AuxEditorScript.lua")

-- run another script passing our context (careful: the other script can read/write anything in context too!)
loadfile("New Folder/AuxEditorScript.lua")(context)

-- editor scripts are allowed to run scripts anywhere on the file system
-- scary, ey? well, that's why Unity warns against running the editor with admin privileges ...
--dofile("P:/test.lua")


function context.Reset()
    print("Lua Reset")
end

function context.Awake()
    print("Lua Awake - Rise and shine, Mr. Luny!")
end

function context.OnEnable()
    print("Lua OnEnable " .. tostring(context.ChangeCount) .. ", this = " .. tostring(context.this))
    context:Save()
end

function context.OnDisable()
    print("Lua OnDisable")
end

function context.OnDestroy()
    print("Lua OnDestroy")
end

function context.OnWillReloadScript()
    print("Lua OnWillReloadScript")
end

function context.OnDidReloadScript()
    print("Lua OnDidReloadScript")
end
