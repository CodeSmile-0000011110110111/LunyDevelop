local context = ...
print("Hello, Modding Lua script! " .. tostring(context) .. ", test = " .. tostring(context.test))

context.test = 99999998
if not context.updateCount then
    context.updateCount = 0
    context.fixedUpdateCount = 0
end

context.testTable =
{
    str = "Hello",
    val = 1234.56789,
    bool = true,
}

function context.Update()
    context.updateCount = context.updateCount + 1
end
function context.FixedUpdate()
    context.fixedUpdateCount = context.fixedUpdateCount + 1
    --print(context.printInLua)
end
