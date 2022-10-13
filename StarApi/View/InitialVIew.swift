//
//  InitialVIew.swift
//  StarApi
//
//  Created by Ana Raiany Guimarães Gomes on 2022-10-13.
//

import Foundation
import UIKit

class InitialViewController: UIViewController  {
    
    lazy var fundoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "fundo")
        image.contentMode = .scaleToFill
        
        return image
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        self.view.addSubview(self.fundoImage)
        self.configConstraints()
    }
    
    private func configConstraints() {
        
        NSLayoutConstraint.activate([
            
            
            self.fundoImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.fundoImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.fundoImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.fundoImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: -50),
            self.fundoImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: -80),
            self.fundoImage.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 50)
        ])
    }
    
}

