//
//  CriptyApp.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 08/07/21.
//

import SwiftUI

@main
struct CriptyApp: App {
    @StateObject var authViewModel = AuthViewModel();
    

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(authViewModel)
        }
    }
}
