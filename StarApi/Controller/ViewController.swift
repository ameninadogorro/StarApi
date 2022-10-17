//
//  ViewController.swift
//  StarApi
//
//  Created by Ana Raiany Guimarães Gomes on 2022-10-10.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var fundoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "fundo")//definindo qual vai ser meu background
        image.contentMode = .scaleToFill
        
        return image
    } ()

    lazy var tableView:UITableView = {
        let tableView = UITableView(frame:.zero, style: .insetGrouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
//        tableView.separatorStyle = .none
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)//definindo a TableView
        return tableView
    }()

    var characters: [People] = [] //aqui eu falo pra pegar do jeitinho que ta no Model
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        tableView.backgroundColor = .clear //declaro que o fundo vai ser transparente pra aparacer o background das estrelas
        
        view.addSubview(fundoImage)//fundo estrelas atras
        view.addSubview(tableView)// tableView na frente do fundo
        
        self.configConstraints()

        
        
        Task {
            characters = await API.pegaTodosPeople() // Baixando os personagens
            tableView.reloadData() // Avisa a tableView para recarregar
            for character in characters {
                print("o nome desse personagem é:",character.name)
            }
        }
      
    }
    
    private func configConstraints() { //Constraints do background
        
        NSLayoutConstraint.activate([
            self.fundoImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.fundoImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.fundoImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            self.fundoImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: -20),
            self.fundoImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: -80),
            self.fundoImage.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 50)
        ])
        
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }


}

extension ViewController: UITableViewDataSource { //Aqui eu falo pra puxar todos os personagens que eu baixei antes
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count // 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let character = characters[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as! CustomTableViewCell
        cell.textLabel?.text = character.name
        return cell
    }
    
}

