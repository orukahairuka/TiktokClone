//
//  MainTabView.swift
//  TiktokClone
//
//  Created by 櫻井絵理香 on 2024/09/30.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Feed")
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            Text("Friends")
                .tabItem {
                    VStack {
                        Image(systemName: "person.2")
                        Text("Home")
                    }
                }
            Text("Upload Post")
                .tabItem {
                    VStack {
                        Image(systemName: "plus")
                    }
                }
        }
    }
}

#Preview {
    MainTabView()
}
