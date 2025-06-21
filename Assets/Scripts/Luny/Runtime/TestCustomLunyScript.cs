using CodeSmile.Luny;
using Lua;
using UnityEngine;

public sealed class TestCustomLunyScript : LunyScript
{
	protected override void Awake()
	{
		Debug.LogWarning("Awake in C# TestCustomLunyScript, before base.Awake()");
		base.Awake();
		Debug.LogWarning("Awake in C# TestCustomLunyScript, after base.Awake()");
	}

	protected override void OnBeforeFirstScriptLoad(LuaTable scriptContext)
	{
		Debug.LogWarning("OnBeforeFirstScriptLoad in C# TestCustomLunyScript");
	}

	// Script was run and returned a LuaTable. Script's Awake() function has not been called yet.
	// You may want to get/set initial script variables before script's Awake():
	protected override void OnBeforeScriptLoad(LuaTable scriptContext)
	{
		Debug.LogWarning("OnBeforeScriptLoad in C# TestCustomLunyScript");
		// Variables are set to the script table (commonly named 'script'): 'print(script.ImportantMessage)'
		// SetString("ImportantMessage", "Testing One-Two-Three ..");

		// If you need the value of 'script.OhWowThatsCoolBool' assigned by the Lua script:
		// var datBool = GetBool("OhWowThatsCoolBool");
	}

	protected override void OnAfterScriptLoad(LuaTable scriptContext)
	{
		Debug.LogWarning("OnAfterScriptLoad in C# TestCustomLunyScript");
	}
}
