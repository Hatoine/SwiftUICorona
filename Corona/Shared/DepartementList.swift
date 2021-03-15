//
//  DepartementList.swift
//  Corona
//
//  Created by matthieu passerel on 24/07/2020.
//

import SwiftUI

struct DepartementList: View {
    @StateObject var parser: Parser
    var body: some View {
        NavigationView {
            List(parser.departements, id: \.nom) { data in
                NavigationLink(data.nom, destination: DepartementView(departement: data))
            }
            .navigationTitle("Départements")
            .onAppear {
                parser.getRegional()
            }
        }
    }
}

struct DepartementList_Previews: PreviewProvider {
    static var previews: some View {
        DepartementList(parser: Parser())
    }
}
