import SwiftUI

public struct TransitionView: View {
    @State var show: Bool = false
    
    public init() {}

    public var body: some View {
        VStack {
            if show {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.green)
                    .frame(width: 60, height: 50)
                    .transition(AnyTransition.opacity
                        .animation(.easeInOut(duration: 1.0)))
            }
            
            Spacer()
            
            Button("Animate") {
                self.show.toggle()
            }.padding(20)
        }
    }
}


