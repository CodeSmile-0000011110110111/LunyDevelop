/*
using System;
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;

public sealed class AutoOpenCreatedSceneAssets : AssetPostprocessor
{
	private static void OnPostprocessAllAssets(String[] importedAssets, String[] deletedAssets, String[] movedAssets,
		String[] movedFromAssetPaths)
	{
		if (importedAssets.Length > 0)
		{
			var importedScenePaths = importedAssets.Where(path => Path.GetExtension(path).Equals(".unity"));
			foreach (var importedScenePath in importedScenePaths)
			{
				EditorSceneManager.OpenScene(importedScenePath, OpenSceneMode.Single);

				// var scene = AssetDatabase.LoadAssetAtPath<SceneAsset>(importedScenePath);
				// if (scene != null)
				// {
				// 	Debug.Log($"Auto-open created scene: {importedScenePath}");
				// 	EditorSceneManager.OpenScene(importedScenePath, OpenSceneMode.Single);
				// }
			}
		}
	}
}
*/
