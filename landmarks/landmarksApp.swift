//
//  landmarksApp.swift
//  landmarks
//
//  Created by frank0 on 2022/4/26.
//

import SwiftUI

@main
struct landmarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
