//
//  ViewController.swift
//  Carangas
//
//  Copyright © 2018 Eric Brito. All rights reserved.
//

import UIKit

class CarViewController: UIViewController {
    
    var car: Car!
    
    let formater: NumberFormatter = {
        
    let formater = NumberFormatter()
        formater.numberStyle = .currency
        formater.locale = Locale(identifier: "pt-BR")
        formater.currencySymbol = "R$ "
        formater.alwaysShowsDecimalSeparator = true
        
        return formater
        
        
    }()
    
    @IBOutlet weak var lbBrand: UILabel!
    @IBOutlet weak var lbGasType: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    @IBOutlet weak var loading: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        lbBrand.text = car.brand
        lbGasType.text = "Combustível: \(car.gas)"
        title = car.name
        lbPrice.text = formater.string(from: NSNumber(value: car.price))
    }
    

    
}
