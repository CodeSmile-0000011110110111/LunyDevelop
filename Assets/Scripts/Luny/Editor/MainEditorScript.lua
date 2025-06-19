local context = ...
context.EditorType = "ScriptableSingleton"

context.ChangeCount = context.ChangeCount ~= nil and context.ChangeCount + 1 or 0
print("Change count = " .. tostring(context.ChangeCount))

--print("context: " .. tostring(context))
--for k, v in pairs(context) do
--    print("\t" .. tostring(k) .. " = " .. tostring(v))
--end

--print("Hello, MainEditorScript! script = " .. tostring(context))
--dofile("New Folder/AuxEditorScript.lua")

local auxScript = loadfile("New Folder/AuxEditorScript.lua", "t")
if auxScript then
    auxScript(context)
else
    print("auxScript is nil!")
end

function context.Reset()
    print("Lua Reset")
end

function context.Awake()
    print("Lua Awake - Rise and shine, Mr. Luny!")
end

function context.OnEnable()
    print("Lua OnEnable " .. tostring(context.ChangeCount))
end

function context.OnDisable()
    print("Lua OnDisable")
end

function context.OnDestroy()
    print("Lua OnDestroy")
end

--dofile("P:/test.lua")
