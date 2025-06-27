using CodeSmile.Luny;
using Lua;using UnityEngine;

public sealed class MyModScript : LunyScript
{
	// To get/set script variables when the script is first loaded:
	protected override void OnBeforeFirstScriptLoad(LuaTable scriptContext)
	{
	}

	// To get/set script variables every time the script is loaded (incl. hot reload):
	protected override void OnBeforeScriptLoad(LuaTable scriptContext) 
	{
	}

	// To get/set script variables every time after the script was loaded (incl. hot reload):
	protected override void OnAfterScriptLoad(LuaTable scriptContext)
	{
	}
}