//
//  CharacterViewController.swift
//  StarApi
//
//  Created by Ana Raiany Guimarães Gomes on 2022-10-20.
//

import UIKit

class CharacterViewController: UIViewController {
    
    var character: People?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        print("controller character:", character)
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
