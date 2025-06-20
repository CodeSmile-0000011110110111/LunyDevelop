local context = ...

print("Hello, LunyScript!")

-- Reset only gets called in editor when the component is reset
function context.Reset()
    print("LunyScript Reset")
end

-- Awake runs once after instantiation
function context.Awake()
    print("LunyScript Awake - Rise and shine, Mr. LunyScript!")
end

-- OnEnable runs after instantiation and whenever the SetActive state becomes true
function context.OnEnable()
    print("LunyScript OnEnable, this = " .. tostring(context.this))
end

-- OnEnable runs whenever the SetActive state becomes false
function context.OnDisable()
    print("LunyScript OnDisable")
end

-- OnDestroy runs when the component or gameobject gets destroyed
function context.OnDestroy()
    print("LunyScript OnDestroy")
end


-- This runs whenever you change the script's contents and save it. On save! You needn't even tab into Unity.
-- Perhaps you may need to save some state at this point? Who knows. It's good to have that callback for sure.
-- Note that this does not run when the script is first loaded. Hence the "reload" in the name.
function context.OnWillReloadScript()
    print("LunyScript OnWillReloadScript")
end

-- This runs AFTER the script was (re-)loaded, before any other events (ie Awake). Perhaps you need to restore
-- some state before the script's Awake runs. Commonly used in combintation with OnWillReloadScript.
function context.OnDidLoadScript()
    print("LunyScript OnDidLoadScript")
end
