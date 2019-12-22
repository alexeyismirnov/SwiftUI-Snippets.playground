import SwiftUI

// https://gist.github.com/fitomad/38d22be227ac9536a10e0d2851c134f5

public struct FlipContainer: View
{
    public init() {}

    public var body: some View
    {
        VStack
        {
            Text("SwiftUI Animations.")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Animación inspirada en la presentada durante la sesión 219, SwiftUI on watchOS, de la pasada WWDC 2019")
                .lineLimit(nil)
                .lineSpacing(1.5)
                .padding(16)
          
            FlipView()
        }
    }
}

// MARK: - Es la `View` que implementa la tarjeta -
public struct FlipView: View
{
    public init() {}

    @State private var showResults: Bool = false
    
    public var body: some View
    {
        ZStack
        {
            Side(text: "Question?")
                .background(Color.yellow)
                .rotation3DEffect(.degrees(self.showResults ? 180.0 : 0.0), axis: (x: 1.0, y: 0.0, z: 0.0))
                .zIndex(self.showResults ? 0 : 1)
                .frame(width: 300, alignment: .center)
            
            Side(text: "Answer!")
                .background(Color.yellow)
                .rotation3DEffect(.degrees(self.showResults ? 0.0 : 180.0), axis: (x: -1.0, y: 0.0, z: 0.0))
                .zIndex(self.showResults ? 1 : 0)
                .frame(width: 300, alignment: .center)
        }
        .onTapGesture { self.handleFlipViewTap() }
    }
    
    private func handleFlipViewTap() -> Void
    {
       withAnimation(.easeOut(duration:0.25))
        {
            self.showResults.toggle()
        }
    }
}

// MARK: - Una de las caras de la tarjeta -
public struct Side: View
{
    @State public var text: String = ""
    
    public var body: some View
    {
        Text(self.text)
            .font(.title)
            .fontWeight(.black)
            .padding(32)
    }
}
