using Luny;
using UnityEditor;
using UnityEngine;

public sealed class LuaSerializeTest : MonoBehaviour
{
	public SerializedLuaValue LuaValueTest1;
	public SerializedLuaValue LuaValueTest2;

	public SerializedLuaKeyValue LuaKeyValueTest1;
	public SerializedLuaKeyValue LuaKeyValueTest2;

	public SerializedLuaTable LuaTableTest1;
	public SerializedLuaTable LuaTableTest2;

	private void OnValidate()
	{
		//Debug.Log("OnValidate: " + serializedLuaValueTest.ToString());

		// Debug.Log("LuaTableTest1 dump:");
		// foreach (var kvp in LuaTableTest1.Table)
		// {
		// 	Debug.Log($"\t[{kvp.Key}] = [{kvp.Value}] ({kvp.Value.Type})");
		// }
	}
}
