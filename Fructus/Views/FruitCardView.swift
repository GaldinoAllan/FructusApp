import SwiftUI

struct FruitCardView: View {
    // MARK: - State Properties
    @State private var isAnimating = false
    
    // MARK: - Properties
    private let shadowColor = Color(red: 0, green: 0, blue: 0, opacity: 0.15)
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // MARK: - Fruit Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: shadowColor, radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // MARK: - Fruit Title
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: shadowColor, radius: 2, x: 2, y: 2)
                
                // MARK: - Fruit Headline
                Text("Blueberries are sweet, nutricious and wildly popular fruit all over the world.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // MARK: - Button Start
                StartButtonView()
            } //: VStack
        } //: ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity,
               alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [.blueberryLight, .blueberryDark]),
                                   startPoint: .top,
                                   endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - Preview
struct FuitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView().previewLayout(.fixed(width: 320, height: 640))
    }
}
