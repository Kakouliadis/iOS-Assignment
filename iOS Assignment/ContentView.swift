//
//  ContentView.swift
//  iOS Assignment
//
//  Created by Georgios Kakouliadis on 13/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowing: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    if isShowing {
                        SideMenuView(isShowing: $isShowing)
                    }
                    HomeView()
                        .cornerRadius(isShowing ? 20 : 10)
                        .offset(x: isShowing ? 300 : 0, y: isShowing ? 44 : 0)
                        .scaleEffect(isShowing ? 0.8 : 1)
                        .navigationBarItems(leading: Button(action: {
                            withAnimation(.spring()) {
                                isShowing.toggle()
                            }
                        }, label: {
                            Image(systemName: "list.bullet")
                                .foregroundColor(.black)
                        }))
                        .navigationTitle("Home")
                } // ZSTACK END
                .onAppear {
                    isShowing = false
              }
            } // VSTACK END
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Bell button tapped")
                    }, label: {Image(systemName: "bell")})
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(.white)
            
            Text("Feed")
                .padding()
        }
    }
}
