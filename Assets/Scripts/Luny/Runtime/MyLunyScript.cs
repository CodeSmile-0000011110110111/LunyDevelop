using Lua;
using Luny;
using System.Threading.Tasks;
using UnityEngine;

public sealed class MyLunyScript : LunyScript
{
	protected override void Awake()
	{
		//Debug.LogWarning("Awake in C# TestCustomLunyScript, before base.Awake()");
		base.Awake();
		//Debug.LogWarning("Awake in C# TestCustomLunyScript, after base.Awake()");
	}

	protected override void OnBeforeFirstScriptLoad(LuaTable scriptContext)
	{
	}
	protected override void OnBeforeScriptLoad(LuaTable scriptContext)
	{
	}
	protected override void OnAfterScriptLoad(LuaTable scriptContext)
	{
	}
}
