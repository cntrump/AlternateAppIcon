/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view with a formatted image displaying the icon specified.
*/

import SwiftUI

struct IconImage: View {
    var icon: Icon

    var body: some View {
        Label {
            Text(icon.rawValue)
        } icon: {
            Image(uiImage: UIImage(named: icon.rawValue) ?? UIImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(minHeight: 57, maxHeight: 1024)
                .cornerRadius(10)
                .shadow(radius: 10)
                .padding()
        }
            .labelStyle(.iconOnly)
    }
}

struct IconImage_Previews: PreviewProvider {
    static var previews: some View {
        IconImage(icon: Icon.primary)
.previewInterfaceOrientation(.portrait)
    }
}
