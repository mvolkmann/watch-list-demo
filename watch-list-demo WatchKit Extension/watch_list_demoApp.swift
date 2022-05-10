//
//  watch_list_demoApp.swift
//  watch-list-demo WatchKit Extension
//
//  Created by Mark Volkmann on 5/10/22.
//

import SwiftUI

@main
struct watch_list_demoApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
