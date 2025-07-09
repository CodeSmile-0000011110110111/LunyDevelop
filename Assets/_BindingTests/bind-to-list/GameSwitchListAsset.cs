using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

namespace UIToolkitExamples
{
	[Serializable]
	public struct GameSwitch
	{
		public String name;
		public Boolean enabled;
	}

	[CreateAssetMenu(menuName = "UIToolkitExamples/GameSwitchList")]
	public class GameSwitchListAsset : ScriptableObject
	{
		public List<GameSwitch> switches;

		public void Reset() => switches = new List<GameSwitch>
		{
			new() { name = "Use Local Server", enabled = false },
			new() { name = "Show Debug Menu", enabled = false },
			new() { name = "Show FPS Counter", enabled = true },
		};

		public Boolean IsSwitchEnabled(String switchName) => switches.Find(s => s.name == switchName).enabled;
	}
}
