//
//  ViewController.swift
//  StarApi
//
//  Created by Ana Raiany Guimarães Gomes on 2022-10-10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        Task {
            let characters = await API.pegaTodosPeople()
            print(characters.count)
            for character in characters {
                print("o nome desse personagem é:",character.name)
            }
        }
        // Do any additional setup after loading the view.
    }


}

