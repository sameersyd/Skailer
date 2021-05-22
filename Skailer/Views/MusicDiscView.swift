//
//  MusicDiscView.swift
//  Skailer
//
//  Created by Sameer Nawaz on 22/05/21.
//

import SwiftUI

struct MusicDiscView: View {
    var body: some View {
        ZStack {
            Circle().foregroundColor(.primary_color)
                .frame(width: 150, height: 150)
                .modifier(NeuShadow())
        }
    }
}

struct MusicDiscView_Previews: PreviewProvider {
    static var previews: some View {
        MusicDiscView()
    }
}
