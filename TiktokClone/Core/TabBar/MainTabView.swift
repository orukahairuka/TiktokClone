//
//  MainTabView.swift
//  TiktokClone
//
//  Created by 櫻井絵理香 on 2024/09/30.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Feed")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 0 ? "house.fill": "house")
                            .environment(\.symbolVariants,selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                .onAppear{selectedTab = 0}
                .tag(1)
            Text("Friends")
                .tabItem {
                    VStack {
                        Image(systemName: "person.2")
                        Text("Home")
                    }
                }
                .onAppear {
                    selectedTab = 1
                }
                .tag(0)
            Text("Upload Post")
                .tabItem {
                    VStack {
                        Image(systemName: "plus")
                    }
                }
            Text("Notifications")
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                        Text("Home")
                    }
                }
                .onAppear{
                    selectedTab = 3
                }
                .tag(3)
            Text("Profile")
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Home")
                    }
                }
        }
    }
}

#Preview {
    MainTabView()
}
