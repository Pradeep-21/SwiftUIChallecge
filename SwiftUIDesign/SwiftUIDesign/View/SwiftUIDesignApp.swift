//
//  SwiftUIDesignApp.swift
//  SwiftUIDesign
//
//  Created by Pradeep Selvaraj on 25/12/21.
//

import SwiftUI

@main
struct SwiftUIDesignApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SignUpView()
                .accentColor(.stLightOrange)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
