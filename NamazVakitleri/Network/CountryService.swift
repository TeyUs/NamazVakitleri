//
//  CountryService.swift
//  NamazVakitleri
//
//  Created by Uslu, Teyhan on 2.01.2024.
//

import Foundation
import Alamofire

class CountryService {
    
    func fetchCountries(completion: @escaping (Result<[Country], AFError>) -> Void) {
        let url:URL = URL(string: Api.countries.rawValue)!
        let request = AF.request(url, method: .get)
            .validate()
        request.responseDecodable { (response: DataResponse<[Country], AFError>) in
            switch response.result {
            case.success(let countries):
                completion(.success(countries))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
