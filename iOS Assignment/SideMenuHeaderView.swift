//
//  SideMenuHeaderView.swift
//  iOS Assignment
//
//  Created by Georgios Kakouliadis on 14/7/22.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button(action: { withAnimation(.spring()) {
                isShowing.toggle()
            }}, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            
            VStack(alignment: .leading) {
                Image("sq")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("George")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@kakouliadis")
                    .font(.system(size: 14))
                 // .padding(.bottom, 24)
                
                HStack {
                    Spacer()
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
            .preferredColorScheme(.dark)
    }
}
