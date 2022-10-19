//
//  FeaturesView.swift
//  StarApi
//
//  Created by Ana Raiany Guimarães Gomes on 2022-10-19.
//

import Foundation
import UIKit

class FeaturesView: UIViewController {
    
    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
    }
    func setupButto() {
        view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
    }
    
    
    
}
