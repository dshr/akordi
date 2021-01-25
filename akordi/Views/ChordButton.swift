import Foundation
import SwiftUI

struct ChordButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 10, weight: .regular, design: .monospaced))
            .multilineTextAlignment(.center)
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: .infinity)
            .foregroundColor(configuration.isPressed ? Color(.systemBackground) : Color(.label))
            .padding()
            .background(configuration.isPressed ? Color(.label) : Color(.secondarySystemFill))
            .cornerRadius(8)
    }
}
