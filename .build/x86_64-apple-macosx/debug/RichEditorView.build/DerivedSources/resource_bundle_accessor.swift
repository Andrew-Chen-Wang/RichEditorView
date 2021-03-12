import class Foundation.Bundle

extension Foundation.Bundle {
    static var module: Bundle = {
        let mainPath = Bundle.main.bundlePath + "/" + "RichEditorView_RichEditorView.bundle"
        let buildPath = "/Users/andrewcwang/Work/Code/projects/iOS/RichEditorView/.build/x86_64-apple-macosx/debug/RichEditorView_RichEditorView.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle != nil ? preferredBundle : Bundle(path: buildPath) else {
            fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}