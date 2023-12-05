//
//  MongoDBQuestionsApp.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/2.
//

import SwiftUI

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
           return .portrait
       }
}

@main
struct MongoDBQuestionsApp: App {
    var body: some Scene {
        WindowGroup {
            QuestionDetailView()
        }
    }
}
