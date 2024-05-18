//
//  Spotify_clone_AApp.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 11/05/24.
//

import SwiftUI

@main
struct Spotify_clone_AApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SignInView()
        }
    }
}
