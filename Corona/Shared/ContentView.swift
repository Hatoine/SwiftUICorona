//
//  ContentView.swift
//  Shared
//
//  Created by matthieu passerel on 24/07/2020.
//

import SwiftUI

struct ContentView: View {
    @StateObject var datas = Parser()
    @State var selection = 0
    var body: some View {
        TabView(selection: $selection,
                content:  {
                    GlobalView(parser: datas)
                    .tabItem { Text("Données Globales")
                        Image(systemName: "globe")
                    }.tag(0)
                    DepartementList(parser: datas).tabItem {
                        Text("Données départementales")
                        Image(systemName: "list.bullet")
                    }.tag(1)
                })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
