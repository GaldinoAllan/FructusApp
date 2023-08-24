import SwiftUI

@main
struct FructusApp: App {
    // MARK: - App Storage
    @AppStorage(.isOnboarding) var isOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView(fruits: fruitsData)
            } else {
                ContentView()
            }
        }
    }
}
