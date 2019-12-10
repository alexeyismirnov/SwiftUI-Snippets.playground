import UIKit
import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("SwiftUI in a Playground!")
    }
}

let viewController = UIHostingController(rootView: ContentView())

PlaygroundPage.current.liveView = viewController
