//
//  AppDelegate.swift
//  CineMate
//
//  Created by Marco Puig on 10/27/23.
//

import UIKit
import ParseSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        APICaller.shared.setup()
        
        ParseSwift.initialize(applicationId: "7zEm5rRQvmOHgxS4hOXvxhoODo0lsEZkbGE0KQj4",
                              clientKey: "uAoCAGUh1jHePmSsOn3oeWGJZQQBCr0KOh9sPcDn",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

