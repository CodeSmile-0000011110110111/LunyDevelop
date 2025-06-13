local context = ...

print("context: " .. tostring(context))
for k, v in pairs(context) do
    print("\t" .. tostring(k) .. " = " .. tostring(v))
end

print("Hello, MainEditorScript! script = " .. tostring(context))
--dofile("New Folder/AuxEditorScript.lua")

loadfile("New Folder/AuxEditorScript.lua", "t")(context)

--dofile("P:/test.lua")
