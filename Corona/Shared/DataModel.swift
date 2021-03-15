//
//  DataModel.swift
//  Corona
//
//  Created by matthieu passerel on 24/07/2020.
//

import Foundation


struct GlobalData: Decodable {
    var FranceGlobalLiveData: [HealthData]
}

struct HealthData: Decodable {
    var date: String
    var source: Source
    var sourceType: String
    var casConfirmes: Int?
    var deces: Int
    var decesEhpad: Int?
    var hospitalises: Int
    var reanimation: Int
    var gueris: Int
    var casConfirmesEhpad: Int?
    var nouvellesHospitalisations: Int?
    var nouvellesReanimations: Int?
    var nom: String
    var code: String
    
}

struct Source: Decodable {
    var nom: String
}



struct AllDatas: Decodable {
    var allLiveFranceData: [Departement]
}

struct Departement: Decodable {
    var code: String
    var nom: String
    var date: String
    var hospitalises: Int
    var reanimation: Int
    var deces: Int
    var gueris: Int
    var source: Source
}

