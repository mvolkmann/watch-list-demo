import SwiftUI

@main
struct watch_list_demoApp: App {
    @StateObject private var model = Model()
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView().environmentObject(model)
            }
        }

        WKNotificationScene(
            controller: NotificationController.self,
            category: "myCategory"
        )
    }
}
