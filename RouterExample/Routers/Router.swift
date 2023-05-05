//
//  Router.swift
//  RouterExample
//
//  Created by Michelle Grover on 5/4/23.
//

import SwiftUI

class Router: ObservableObject {
    enum Route {
        case home, details
    }
    
    @Published var currentRoute: Route = .home
    
    func navigate(to route: Route) {
        currentRoute = route
    }
}
