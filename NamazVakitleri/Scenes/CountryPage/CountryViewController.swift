//
//  CountryViewController.swift
//  NamazVakitleri
//
//  Created by Uslu, Teyhan on 1.01.2024.
//

import UIKit

class CountryViewController: UIViewController {
    
    let viewModel = CountryViewModel()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidload()
        viewModel.view = self
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func updateView() {
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segue.countryToCity.rawValue {
            guard let cityVC = segue.destination as? CityViewController else { return } //ekrana hata yazdırılmalı
            guard let countryCode = sender as? String else { return }
            cityVC.countryCode = countryCode
//            cityVC.viewModel.countryCode = countryCode
//            şeklinde olmalı, view daata tutmaz, viewModel tutar
        }
    }
}

extension CountryViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.getNumberOfItems()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.getCellData(indexRow: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.didSelected(rowAt: indexPath.row)
    }
}
