//
//  ContentView.swift
//  RouterExample
//
//  Created by Michelle Grover on 5/4/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var router = Router()
    
    var body: some View {
        NavigationView {
            switch router.currentRoute {
            case .home:
                HomeView()
                    .navigationTitle("Home")
                    .navigationBarItems(trailing: Button(action: {
                        router.navigate(to: .details)
                    }, label: {
                        Text("Details")
                    }))
            case .details:
                DetailsView()
                    .navigationTitle("Details")
                    .navigationBarItems(trailing: Button(action: {
                        router.navigate(to: .home)
                    }, label: {
                        Text("Home")
                    }))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
