import SwiftUI

struct SourceLinkView: View {
    // MARK: - Properties
    let linkUrl: String
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: linkUrl)!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(linkUrl: "https://wikipedia.com")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
