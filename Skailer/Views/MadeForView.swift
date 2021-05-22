//
//  MadeForView.swift
//  Skailer
//
//  Created by Sameer Nawaz on 22/05/21.
//

import SwiftUI

struct MadeForView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Image.profile_pic.resizable().scaledToFill()
                .frame(width: 114, height: 140).cornerRadius(16)
            VStack(alignment: .leading, spacing: 8) {
                Text("Discover Weekly").foregroundColor(.text_primary)
                    .modifier(FontModifier(.bold, size: 18))
                Text("Your weekly mixtape of fresh music. Enjoy new music and deep cuts picked for you.")
                    .foregroundColor(.text_primary_f1)
                    .modifier(FontModifier(.regular, size: 13))
            }.padding(.leading, 12)
            Spacer()
        }
        .padding(12).background(Color.primary_color)
        .cornerRadius(24).modifier(NeuShadow())
    }
}
