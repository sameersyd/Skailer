//
//  HomeView.swift
//  Skailer
//
//  Created by Sameer Nawaz on 22/05/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.primary_color.edgesIgnoringSafeArea(.all)
            Text("Hello Sameer 👋🏻")
                .foregroundColor(.text_header)
                .modifier(FontModifier(.black, size: 28))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
