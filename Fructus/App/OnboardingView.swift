import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(0..<5) { _ in
                FruitCardView()
            }
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
