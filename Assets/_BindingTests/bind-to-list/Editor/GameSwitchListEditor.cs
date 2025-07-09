using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

namespace UIToolkitExamples
{
    [CustomEditor(typeof(GameSwitchListAsset))]
    public class GameSwitchListEditor : Editor
    {
        [SerializeField]
        VisualTreeAsset m_ItemAsset;

        [SerializeField]
        VisualTreeAsset m_EditorAsset;

        public override VisualElement CreateInspectorGUI()
        {
            m_EditorAsset = AssetDatabase.LoadAssetAtPath<VisualTreeAsset>("Assets/_BindingTests/bind-to-list/Editor/game_switch_list_editor.uxml");
            m_ItemAsset = AssetDatabase.LoadAssetAtPath<VisualTreeAsset>("Assets/_BindingTests/bind-to-list/game_switch.uxml");

            var root = m_EditorAsset.CloneTree();
            var listView = root.Q<ListView>();
            listView.makeItem = m_ItemAsset.CloneTree;
            return root;
        }
    }
}
