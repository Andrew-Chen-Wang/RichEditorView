# RichEditorView

This is the Swift 5 version of [cjwirth/RichEditorView](https://github.com/cjwirth/RichEditorView).

I've made some modifications to accomodate it for Dark Mode. Additionally, the insert link functionality is also different.

The RichEditorView dir is the actual package itself. The Sample dir are the standard files that you can copy and paste into your project for a jump start. (I'm a privacy nerd, so there is no .xcworkspace. You will just have to copy and paste the code). 

Luckily, there are no storyboards in this sample, but there's no HTML preview. If you'd like, you can just print the HTML using the function ``richEditor(_ editor:RichEditorView, contentDIdChange content: String) {}``

-------

In order to import the RichEditorView package, you need to create a new group/folder by going to the bottom left of XCode and clicking on the + button. Create a new group called RichEditorView. Then, manually create new files and copy and paste accordingly from the RichEditorView directory in the source code. There is currently no plan to go to CocoaPods or Carthage or any other package manager. For resources, if you download this repository via ZIP and then unzip the file, you can right click on YOUR newly created Resources directory and selecting "Add Files to" then select the Resource files from the unzipped package. DO NOT USE Assets!!!

The sample assumes you have followed the above intructions. This package assumes perfect functionality and laziness, so no unit testing included.
