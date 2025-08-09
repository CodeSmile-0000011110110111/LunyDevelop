using System;
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;

public sealed class AutoOpenCreatedSceneAssets : AssetPostprocessor
{
	private static void OnPostprocessAllAssets(String[] importedPaths, String[] deletedPaths, String[] movedToPaths, String[] movedFromPaths)
	{
		if (importedPaths.Length > 0)
			OnPostprocessImportedAssets(importedPaths);
	}

	private static void OnPostprocessImportedAssets(String[] importedPaths)
	{
		var scenePath = importedPaths.Where(path => Path.GetExtension(path).Equals(".unity")).FirstOrDefault();
		if (scenePath != null)
			EditorSceneManager.OpenScene(scenePath);
	}
}
