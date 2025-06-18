local context = ...

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

--dofile("P:/test.lua")
