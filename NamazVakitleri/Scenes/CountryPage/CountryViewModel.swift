//
//  CountryViewModel.swift
//  NamazVakitleri
//
//  Created by Uslu, Teyhan on 1.01.2024.
//

import Foundation

class CountryViewModel {
    weak var view: CountryViewController?
    var model: [Country] = []
    var service = CountryService()
    
    func viewDidload() {
        getCountries()
    }
    
    private func getCountries() {
        service.fetchCountries { [weak self] result in
            switch result {
            case .success(let countries):
                self?.model = countries
                self?.updateView()
            case .failure(_):
                break
            }
        }
    }
    
    private func updateView() {
        view?.updateView()
    }
    
    func getNumberOfItems()  -> Int {
        model.count
    }
    
    func getCellData(indexRow: Int) -> String {
        return model[indexRow].ulkeAdi ?? ""
    }
    
    func didSelected(rowAt: Int) {
        view?.performSegue(withIdentifier: Segue.countryToCity.rawValue, 
                           sender: model[rowAt].ulkeID ?? DefaultValue.TurkeyCode)
    }
}
