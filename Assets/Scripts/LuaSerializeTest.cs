using CodeSmile.Luny;
using System;
using UnityEngine;

public sealed class LuaSerializeTest : MonoBehaviour
{
	public SerializableLuaValue serializedLuaValueTest;

	private void OnValidate()
	{
		//Debug.Log("OnValidate: " + serializedLuaValueTest.ToString());
	}
}
