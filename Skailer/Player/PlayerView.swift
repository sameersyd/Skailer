//
//  PlayerView.swift
//  Skailer
//
//  Created by Sameer Nawaz on 22/05/21.
//

import SwiftUI

fileprivate let HORIZONTAL_SPACING: CGFloat = 24

struct PlayerView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @StateObject var viewModel: PlayerViewModel
    
    var body: some View {
        ZStack {
            Color.primary_color.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 0) {
                HStack(alignment: .center) {
                    Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                        Image.close.resizable().frame(width: 20, height: 20)
                            .padding(8).background(Color.primary_color)
                            .cornerRadius(20).modifier(NeuShadow())
                    }
                    Spacer()
                    Button(action: {  }) {
                        Image.options.resizable().frame(width: 16, height: 16)
                            .padding(12).background(Color.primary_color)
                            .cornerRadius(20).modifier(NeuShadow())
                    }
                }.padding(.horizontal, HORIZONTAL_SPACING).padding(.top, 12)
                
                PlayerDiscView(coverImage: viewModel.model.coverImage)
                
                Text(viewModel.model.name).foregroundColor(.text_primary)
                    .modifier(FontModifier(.black, size: 30))
                    .padding(.top, 12)
                Text(viewModel.model.artistName).foregroundColor(.text_primary_f1)
                    .modifier(FontModifier(.semibold, size: 18))
                    .padding(.top, 12)
                
                Spacer()
                
                HStack(alignment: .center, spacing: 12) {
                    Text("01:34").foregroundColor(.text_primary)
                        .modifier(FontModifier(.bold, size: 12))
                    Slider(value: $viewModel.slider, in: -100...100)
                        .accentColor(.main_color)
                    Button(action: { viewModel.liked.toggle() }) {
                        (viewModel.liked ? Image.heart_filled : Image.heart)
                            .resizable().frame(width: 20, height: 20)
                    }
                }.padding(.horizontal, 45)
                
                Spacer()
                
                HStack(alignment: .center) {
                    Button(action: {  }) {
                        Image.next.resizable().frame(width: 18, height: 18)
                            .rotationEffect(Angle(degrees: 180))
                            .padding(24).background(Color.primary_color)
                            .cornerRadius(40).modifier(NeuShadow())
                    }
                    Spacer()
                    Button(action: { viewModel.isPlaying.toggle() }) {
                        (viewModel.isPlaying ? Image.pause : Image.play)
                            .resizable().frame(width: 28, height: 28)
                            .padding(50).background(Color.main_color)
                            .cornerRadius(70).modifier(NeuShadow())
                    }
                    Spacer()
                    Button(action: {  }) {
                        Image.next.resizable().frame(width: 18, height: 18)
                            .padding(24).background(Color.primary_color)
                            .cornerRadius(40).modifier(NeuShadow())
                    }
                }.padding(.horizontal, 32)
            }.padding(.bottom, HORIZONTAL_SPACING).animation(.spring())
        }
    }
}

fileprivate struct PlayerDiscView: View {
    let coverImage: Image
    var body: some View {
        ZStack {
            Circle().foregroundColor(.primary_color)
                .frame(width: 300, height: 300).modifier(NeuShadow())
            ForEach(0..<15, id: \.self) { i in
                RoundedRectangle(cornerRadius: (150 + CGFloat((8 * i))) / 2)
                    .stroke(lineWidth: 0.25)
                    .foregroundColor(.disc_line)
                    .frame(width: 150 + CGFloat((8 * i)),
                           height: 150 + CGFloat((8 * i)))
            }
            coverImage.resizable().scaledToFill()
                .frame(width: 120, height: 120).cornerRadius(60)
        }
    }
}
