//
//  randaamApp.swift
//  RandaamWatch WatchKit Extension
//
//  Created by Sem Pruijs on 3/15/21.
//  Copyright © 2021 Sem Pruijs. All rights reserved.
//

import SwiftUI

@main
struct randaamApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
