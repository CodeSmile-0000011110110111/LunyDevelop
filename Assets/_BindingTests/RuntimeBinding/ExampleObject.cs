// Copyright (C) 2021-2025 Steffen Itterheim
// Refer to included LICENSE file for terms and conditions.

using UnityEngine;

namespace _BindingTests.RuntimeBinding
{
	[CreateAssetMenu]
	public class ExampleObject : ScriptableObject
	{
		[Header("Simple binding")]
		public string simpleLabel = "Hello World!";
	}
}
