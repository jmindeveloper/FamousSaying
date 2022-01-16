//
//  MainTabView.swift
//  FamousSaying
//
//  Created by J_Min on 2022/01/16.
//

import SwiftUI

enum Tabs {
    case today, creat, watch, myPage
}

struct MainTabView: View {
    
    @State private var selectedTab: Tabs = .today
    
    var body: some View {
        TabView {
            Group {
                today
                creat
                watch
                myPage
            }
        }.tint(.gray)
    }
}

extension MainTabView {
    var today: some View {
        TodayView()
            .tag(Tabs.today)
            .tabItem {
                Image(systemName: "t.square")
                Text("Today")
            }
    }
    
    var creat: some View {
        Text("creat")
            .tag(Tabs.creat)
            .tabItem {
                Image(systemName: "plus.app")
                Text("Creat")
            }
    }
    
    var watch: some View {
        Text("watch")
            .tag(Tabs.watch)
            .tabItem {
                Image(systemName: "eye.circle")
                Text("Watch")
            }
    }
    
    var myPage: some View {
        Text("myPage")
            .tag(Tabs.myPage)
            .tabItem {
                Image(systemName: "person")
                Text("My Page")
            }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
