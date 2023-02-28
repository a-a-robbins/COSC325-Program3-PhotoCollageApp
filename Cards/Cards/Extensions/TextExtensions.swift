//built from SwiftUI Apprentice by Begbie & Tam
//modified by a-a-robbinsNNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN

import SwiftUI

extension Text {
  func scalableText(font: Font = Font.system(size: 1000)) -> some View {
    self
      .font(font)
      .minimumScaleFactor(0.01)
      .lineLimit(1)
  }
}
