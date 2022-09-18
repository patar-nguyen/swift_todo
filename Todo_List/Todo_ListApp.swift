//
//  Todo_ListApp.swift
//  Todo_List
//
//  Created by Patrick Nguyen on 2022-09-13.
//

import SwiftUI

@main
struct Todo_ListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}

struct Previews_Todo_ListApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
