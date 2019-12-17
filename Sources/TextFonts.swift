import SwiftUI

struct FontItem {
    let name: String
    let font: Font
}

let model : [FontItem] = [
    FontItem(name: "largeTitle", font: .largeTitle),
    FontItem(name: "title", font: .title),
    FontItem(name: "headline", font: .headline),
    FontItem(name: "subheadline", font: .subheadline),
    FontItem(name: "body", font: .body),
    FontItem(name: "callout", font: .callout),
    FontItem(name: "footnote", font: .footnote),
    FontItem(name: "caption", font: .caption)
]

public struct TextFontsView : View {
    public init() {}

    public var body : some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(model, id: \.name) { item in
                    VStack {
                        Text("Hello World!").font(item.font)
                        Text(item.name).font(.footnote)
                    }.frame(width: 200, height: 50).padding(15).border(Color.red, width: 1)
                    
                    
                }
            }
        }
    }
}
