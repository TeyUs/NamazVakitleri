//
//  Constants.swift
//  NamazVakitleri
//
//  Created by Uslu, Teyhan on 2.01.2024.
//

import Foundation

enum Segue: String {
    case countryToCity
    case cityToTown
}

enum DefaultValue: String {
    case TurkeyCode = "2"
}


enum Api: String {
    case countries = "https://zikir.app/ulkeler"
}
