//
//  CountryModel.swift
//  NamazVakitleri
//
//  Created by Uslu, Teyhan on 1.01.2024.
//

import Foundation

// MARK: - Country
struct Country: Decodable {
    let ulkeAdi: String?
//    let ulkeAdiEn: String?
    let ulkeID: String?

    enum CodingKeys: String, CodingKey {
        case ulkeAdi = "UlkeAdi"
//        case ulkeAdiEn = "UlkeAdiEn"
        case ulkeID = "UlkeID"
    }
}

//typealias Countries = [Country]


let demoCountries = [Country(ulkeAdi: "Turkey", ulkeID: "2"),
                     Country(ulkeAdi: "ABD", ulkeID: "33"),
                     Country(ulkeAdi: "ALMANYA", ulkeID: "13"),]
