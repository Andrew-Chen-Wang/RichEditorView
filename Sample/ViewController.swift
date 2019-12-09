import UIKit

class ViewController: UIViewController {
    let editorView = RichEditorView()
    var prevText: String!
    let toolbar = RichEditorToolbar()
    
    override func viewDidLoad() {
        super().viewDidLoad
        additionalSafeAreaInsets = .init(top: 6, left: 12, right: 12, bottom: 0)
        editorView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        editorView.center.x = view.center.x
        editorView.delegate = self
        editorView.editingEnabled = true
        toolbar.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 44)
        toolbar.options = RichEditorDefaultOption.all
        editorView.placeholder = "Press to start typing"
        editorView.inputAccessoryView = toolbarview.addSubview(editorView)
        editorView.html = "What I'll usually do for focus and unfocus is similar to what Google Docs does. The insert link functionality is similar to Reddit's except I use a UIAlertController. There are some added and altered functionality like running your custom JS; you will just have to learn what goes on with this package, but it's a quick learn. <b>Good luck!</b> If you have any issues, Yoom will help out, so long as those issues are opened in this repo. Credits still go out to cjwirth and C. Bess" // setting the html must come AFTER the subview has been added. I'm not sure why, though. This could also not be the case after I ported this over to WKWebView
    }
}

extension ViewController: RichEditorDelgate {}

extension ViewController: RichEditorToolbarDelgate {
    // I'll first use getSelectedText and getSelectedHref functions to see if any selection has been made that we can autofill. Go to rich_editor.js for a deeper insight; be cautious since if there is a selection, then the selected text will be replaced.
    var selectedText: String!
    var selectedHref: String!
    selectedText = editorView.getSelectedText()
    selectedHref = editorView.getSelectedHref()
    // The href is required to have a SLASH (/) at the end and a http:// or https:// prefix at the beginning. For my users, I use a UIAlertController (instead of Reddit's uiview). When a confirm action button is pressed, then I automatically check for these.
    editorView.insertLink(href: "https://google.com/", text: "blah", title: nil)
    // toolbar.editor?.insertLink(...) also works
    // If you use a UIAlertController, then you must add editorView.focus(). This is due to the cursor being transferred from the editor view to the new controller which fill outs the links
    // Remember this package is Google Docs style, not MarkDown or Reddit style like many other text editors.
}
