//
//  ViewController.swift
//  FloatingMenuAnimation
//
//  Created by Anantha Krishnan K G on 04/11/18.
//  Copyright © 2018 Ananth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // Buttons
    @IBOutlet var buttonObj1: UIButton!
    @IBOutlet var buttonObj2: UIButton!
    @IBOutlet var buttonObj3: UIButton!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        buttonObj1.modifyView()
        buttonObj2.modifyView()
        buttonObj3.modifyView()
    }


}

extension UIButton {
    func modifyView() {
        self.layer.masksToBounds = false
        self.clipsToBounds = true
        self.layer.cornerRadius = 10
        self.layer.maskedCorners = [.layerMinXMinYCorner,.layerMinXMaxYCorner]
    }
}
