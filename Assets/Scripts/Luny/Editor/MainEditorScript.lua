-- The ... (ellipsis) operator is the equivalent of vararg or in C# `params object[]`.
-- Lua scripts loaded by Luny get a LuaTable passed as vararg. We assign it to a "context" variable.
-- You can use any other name you want eg "script" or "ctx".
local context = ...

-- The context variables survive file reload. Every time the script re-runs, the counter increments.
-- I also want to offer a way to have values survive domain reload, although those would likely be limited
-- to (easy to serialize) number, string, boolean and table types.
context.ChangeCount = context.ChangeCount ~= nil and context.ChangeCount + 1 or 0
print("MainEditorScript change count = " .. tostring(context.ChangeCount))

-- In Editor scripts, the EditorType will define what kind of script it represents. Currently only
-- "ScriptableSingleton" is supported, but I imagine it may also support "EditorWindow" et al in the future.
-- Since "ScriptableSingleton" is the default editor type of editor Lua scripts, I commented it out.
--context.EditorType = "ScriptableSingleton" -- default

-- Let's just say "Hello" to the Unity Console:
print("Hello, MainEditorScript! Context: " .. tostring(context))

-- For the curious: this prints the key/value pairs of the context table:
--print("context: " .. tostring(context))
--for k, v in pairs(context) do print("\t" .. tostring(k) .. " = " .. tostring(v)) end

-- With dofile() you can run another script, but it won't have a context (which is usually best).
-- The script may optionally return one or more Lua values back to the dofile caller.
--local results = dofile("New Folder/AuxEditorScript.lua")

-- With loadfile() you can also run another script, but it acts like a LuaFunction which you have to call.
-- This enables you to pass parameters into the other script as ... vararg. Here, we pass the context.
-- Careful: passing the context around violates encapsulation. It should only be passed to "close friend" scripts.
loadfile("New Folder/AuxEditorScript.lua")(context)

-- Editor scripts are even allowed to run scripts anywhere on the file system! Runtime scripts (by default)
-- are sandboxed and can only load asset scripts and files in StreamingAssets and PersistentDataPath.
-- A bit scary, ey? Well, that's why Unity generally warns against running the editor with admin privileges ...
-- As a regular user, if you were to run "deltree Windows" you'd get a permission exception. As admin? Poof!
--dofile("P:/test.lua")


-- Below are the usual events (messages) that a script typically receives. These will vary based on the script type.

-- As much as possible I want to collate other events, so you won't have to specify that a Lua script acts as an
-- AssetModificationProcessor for instance. Instead, any editor script can implement a function with a known event,
-- like "OnWillCreateAsset" or "focusChanged" or "undoRedoPerfomed" or "selectionChanged". For your convenience.

-- Of course, any event function that isn't implemented doesn't add overhead to script execution.

-- Reset of ScriptableSingleton gets run only once when the project or script loads.
function context.Reset()
    print("Lua Reset")
end

-- Awake of ScriptableSingleton gets run only once when the project or script loads.
function context.Awake()
    print("Lua Awake - Rise and shine, Mr. Luny!")
end

-- OnEnable of ScriptableSingleton gets run after domain reload.
function context.OnEnable()
    print("Lua OnEnable " .. tostring(context.ChangeCount) .. ", this = " .. tostring(context.this))
    context:Save()
end

-- OnDisable of ScriptableSingleton gets run before domain reload.
function context.OnDisable()
    print("Lua OnDisable")
end

-- OnDestroy of ScriptableSingleton actually almost never runs. Only when you manually destroy the instance.
-- It's a bit weird behaviour since even closing the project won't run OnDestroy of a SS. Perhaps I'll fix that
-- because it's kind of unexpected.
function context.OnDestroy()
    print("Lua OnDestroy")
end

-- This runs whenever you change the script's contents and save it. On save! You needn't even tab into Unity.
-- Perhaps you may need to save some state at this point? Who knows. It's good to have that callback for sure.
-- Note that this does not run when the script is first loaded. Hence the "reload" in the name.
function context.OnWillReloadScript()
    print("Lua OnWillReloadScript")
end

-- This runs AFTER the script was (re-)loaded, before any other events (ie Awake). Perhaps you need to restore
-- some state before the script's Awake runs. Commonly used in combintation with OnWillReloadScript.
function context.OnDidLoadScript()
    print("Lua OnDidLoadScript")
end
