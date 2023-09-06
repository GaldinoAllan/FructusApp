import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    let fruits: [Fruit]
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
