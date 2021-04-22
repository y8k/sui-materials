import SwiftUI

struct ColorTextView: View {
    @Binding var color: RGB
    @Binding var isSolved: Bool
    
    var isQuestion: Bool
    
    var body: some View {
        VStack {
            Circle().fill(Color(rgbStruct: color))
            
            switch (isQuestion, isSolved) {
            case (true, true), (false, _): Text(color.intString()).padding()
            default: Text("R: ???, G: ???, B: ???").padding()
            }
        }
    }
}

struct ColorTextView_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
        ColorTextView(color: .constant(RGB()), isSolved: .constant(true), isQuestion: true)
    }
  }
}
