//
//  DepartementView.swift
//  Corona
//
//  Created by matthieu passerel on 24/07/2020.
//

import SwiftUI

struct DepartementView: View {
    var departement: Departement
    var body: some View {
        VStack {
            ZStack {
                Image("world")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 250, alignment: .center)
                    .clipped()
                Text(departement.nom)
                    .font(.title)
                    .padding(.all, 20)
                    .background(Color.secondary)
                    .cornerRadius(20)
            }
            Form(content: {
                ListView(key: "Code", value: departement.code)
                ListView(key: "Date", value: departement.date)
                ListView(key: "Hospitalisés", value: "\(departement.hospitalises)")
                ListView(key: "Réanimation", value: "\(departement.reanimation)")
                ListView(key: "Décès", value: "\(departement.deces)")
                ListView(key: "Guéris", value: "\(departement.gueris)")
            })
        }
    }
}
