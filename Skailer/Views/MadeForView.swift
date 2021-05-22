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
            VStack(alignment: .leading, spacing: 4) {
                
            }
            Spacer()
        }
        .padding(12).background(Color.primary_color)
        .cornerRadius(24).modifier(NeuShadow())
    }
}
