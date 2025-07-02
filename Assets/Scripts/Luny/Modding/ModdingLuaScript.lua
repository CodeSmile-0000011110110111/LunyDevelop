local context = ...
print("Hello, Modding Lua script! " .. tostring(context) .. ", test = " .. tostring(context.test))

context.test = 99999998
