// This asssumes you are not using a storyboard (in my opinion, it's best for most publishing-apps cases. I would use a storyboard for packages to quicken this up, but I want to recommend that everyone stop using it.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptinos launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = ViewController()
        window!.rootViewController
        window!.makeKeyAndVisible()
        return true
    }
}
