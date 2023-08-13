//
//  ContentView.swift
//  testapp
//
//  Created by Вячеслав on 8/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var current_tab: Tab = Tab.Home
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack(spacing: 0, content: {
                
                TabView(selection: $current_tab, content: {
                    
                    MainView()
                        .tag(Tab.Home)
                })
                
                TabBar(selectedTab: $current_tab)
            })
            .ignoresSafeArea(.all, edges: .bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
