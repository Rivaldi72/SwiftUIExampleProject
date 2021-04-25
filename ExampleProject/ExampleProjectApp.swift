//
//  ExampleProjectApp.swift
//  ExampleProject
//
//  Created by Rivaldi Aliando on 25/04/21.
//

import SwiftUI
import PartialSheet

@main
struct ExampleProjectApp: App {
    let sheetManager: PartialSheetManager = PartialSheetManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(sheetManager)
        }
    }
}
