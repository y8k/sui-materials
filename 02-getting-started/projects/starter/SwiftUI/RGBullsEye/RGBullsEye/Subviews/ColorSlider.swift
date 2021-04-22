import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    var trackColor: Color
    
    var body: some View {
        HStack {
            Text("0")
            Slider(value: $value).accentColor(trackColor)
            Text("255")
        }
        .padding(.horizontal)
    }
}

struct ColorSlider_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
        ColorSlider(value: .constant(0.3), trackColor: .red)
        ColorSlider(value: .constant(0.5), trackColor: .green)
        ColorSlider(value: .constant(1.0), trackColor: .blue)
    }
  }
}
