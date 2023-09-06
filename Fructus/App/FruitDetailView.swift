import SwiftUI

struct FruitDetailView: View {
    // MARK: - Properties
    let fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // MARK: - Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // MARK: - Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors.last)
                        
                        // MARK: - Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // MARK: - Nutrients
                        
                        // MARK: - Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors.last)
                        
                        // MARK: - Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // MARK: - Link
                        SourceLinkView(linkUrl: "https://wikipedia.com")
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } //: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VStack
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden, for: .navigationBar)
            } //: ScrollView
            .edgesIgnoringSafeArea(.top)
        } //: Navigation
    }
}

// MARK: - Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[5])
    }
}
