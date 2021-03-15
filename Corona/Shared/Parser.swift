//
//  Parser.swift
//  Corona
//
//  Created by matthieu passerel on 24/07/2020.
//

import Foundation

class Parser: ObservableObject {
    
    let general: String = "https://coronavirusapi-france.now.sh/FranceLiveGlobalData"
    let departement = "https://coronavirusapi-france.now.sh/AllLiveData"
    
    @Published var globalDatas: [HealthData] = []
    @Published var departements: [Departement] = []
    
    func getGeneral() {
        if let url = URL(string: general) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let d = data {
                    do {
                        let result = try JSONDecoder().decode(GlobalData.self, from: d)
                        DispatchQueue.main.async {
                            self.globalDatas = result.FranceGlobalLiveData
                        }
                    } catch {
                        print(error.localizedDescription)
                    }
                }
            }.resume()
        }
    }
    
    func getRegional() {
        if let url = URL(string: departement) {
            URLSession.shared.dataTask(with: url) { (d, _, _) in
                if let data = d {
                    do {
                        let result = try JSONDecoder().decode(AllDatas.self, from: data)
                        DispatchQueue.main.async {
                            self.departements = result.allLiveFranceData
                        }
                    } catch {
                        print(error.localizedDescription)
                    }
                }
            }.resume()
        }
    }
}
