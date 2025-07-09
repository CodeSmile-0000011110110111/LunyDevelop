using System;
using System.Collections.Generic;
using Unity.Properties;
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

internal class ListViewTestWindow : EditorWindow
{
	// This example sets the itemTemplate and bindingSourceSelectionMode in the UXML file.
	// If you want to set them in the C# script, declare an itemLayout field of type VisualTreeAsset
	// and then set the "Item Layout" to "ListViewItem.uxml" in the Inspector window.
	//[SerializeField] private VisualTreeAsset itemLayout;
	private VisualTreeAsset m_ListViewContainer;

	private ListViewItems m_ListViewItems;

	[MenuItem("Window/ListViewTestWindow")] private static void Init() => GetWindow<ListViewTestWindow>().Show();

	private void OnEnable() => m_ListViewContainer =
		AssetDatabase.LoadAssetAtPath<VisualTreeAsset>("Assets/_BindingTests/runtime-binding-listview/UXML/UIListView.uxml");

	private void CreateGUI()
	{
		m_ListViewItems = new ListViewItems();

		m_ListViewContainer.CloneTree(rootVisualElement);
		var listView = rootVisualElement.Q<ListView>();

		// This example sets the itemTemplate and bindingSourceSelectionMode in the UXML file.
		// You can also set them in the C# script like the following:
		// listView.itemTemplate = itemLayout;
		// listView.bindingSourceSelectionMode = BindingSourceSelectionMode.AutoAssign;

		// Set the binding source to the ExampleItemObject instance.
		listView.dataSource = m_ListViewItems;

		// Set the itemsSource binding to the items property of the List object.
		// You can also set the itemsSource binding manually in the UXML file and comment out this line.
		// Refer to the next section for how to set binding in UXML.
		listView.SetBinding("itemsSource", new DataBinding { dataSourcePath = new PropertyPath(nameof(ListViewItems.Items)) });

		m_ListViewItems.Reset();
	}

	public class ListViewItems
	{
		private List<Item> m_Items = new();
		[CreateProperty] public List<Item> Items { get => m_Items; set => m_Items = value; }

		public void Reset() => m_Items = new List<Item>
		{
			new() { name = "Use Local Server", enabled = false },
			new() { name = "Show Debug Menu", enabled = false },
			new() { name = "Show FPS Counter", enabled = true },
		};

		public struct Item
		{
			public Boolean enabled;
			public String name;
		}
	}
}
