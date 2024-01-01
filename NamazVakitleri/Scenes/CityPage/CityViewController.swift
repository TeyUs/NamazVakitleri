//
//  CityViewController.swift
//  NamazVakitleri
//
//  Created by Uslu, Teyhan on 2.01.2024.
//

import UIKit

class CityViewController: UIViewController {
    var countryCode: String?//silinmeli
    @IBOutlet weak var tesTLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tesTLabel.text = String(describing: countryCode)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
