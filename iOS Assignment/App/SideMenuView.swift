//
//  SideMenuView.swift
//  iOS Assignment
//
//  Created by Georgios Kakouliadis on 14/7/22.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue,Color.gray]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                // Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 240)
                    
                // Call items
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(destination: Text(option.title), label: {SideMenuOptionView(viewModel: option)})
                }
                Spacer()
            }
        } .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
