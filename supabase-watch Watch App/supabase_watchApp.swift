//
//  supabase_watchApp.swift
//  supabase-watch Watch App
//
//  Created by Markus Kurbel on 29.04.23.
//

import SwiftUI

@main
struct supabase_watch_Watch_AppApp: App {
    @StateObject var workoutManager = WorkoutManager()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                StartView()
            }
            .sheet(isPresented: $workoutManager.showingSummaryView) {
                SummaryView()
            }
            .environmentObject(workoutManager)
        }
    }
}
