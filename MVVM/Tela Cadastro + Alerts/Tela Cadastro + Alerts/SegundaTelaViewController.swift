//
//  SegundaTelaViewController.swift
//  Tela Cadastro + Alerts
//
//  Created by Gui Feitosa on 16/10/21.
//

import UIKit

class SegundaTelaViewController: UIViewController {

    var pessoa: Pessoa?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ajusteDados()
    }
    
    func ajusteDados() {
        nameLabel.text = pessoa?.nome
        phoneLabel.text = pessoa?.telefone
        addressLabel.text = pessoa?.endereco
        ageLabel.text = pessoa?.idade
    }
}
