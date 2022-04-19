//
//  ColorsDetailVC.swift
//  randomColorsApp_v2
//
//  Created by Terrel Jones on 4/18/22.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .blue
    }

    
}
