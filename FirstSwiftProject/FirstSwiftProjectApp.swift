//
//  FirstSwiftProjectApp.swift
//  FirstSwiftProject
//
//  Created by Shyann on 2023/06/18.
//

import SwiftUI

@main
struct FirstSwiftProjectApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
