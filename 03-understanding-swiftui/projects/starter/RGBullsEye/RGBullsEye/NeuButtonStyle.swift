import SwiftUI

struct NeuButtonStyle: ButtonStyle {
    let width: CGFloat
    let height: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.2 : 1)
            .frame(width: width, height: height)
            .background(
                Group {
                    switch configuration.isPressed {
                    case true:
                        Capsule().fill(Color.element).southEastShadow()
                    case false:
                        Capsule().fill(Color.element).northWestShadow()
                    }
                })
            .foregroundColor(Color(UIColor.systemBlue))
    }
}
