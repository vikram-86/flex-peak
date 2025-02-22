import SwiftUI
import FlexPeak
import FirebaseCore
/// The entry point to the app simply loads the App implementation from SPM module.
@main struct AppMain: App, FlexPeakApp {
    @UIApplicationDelegateAdaptor(FlexPeakAppDelegate.self) var appDelegate
}

class FlexPeakAppDelegate : NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
