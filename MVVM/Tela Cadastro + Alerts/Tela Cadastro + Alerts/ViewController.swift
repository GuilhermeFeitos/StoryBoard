//
//  ViewController.swift
//  Tela Cadastro + Alerts
//
//  Created by Gui Feitosa on 16/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let cadastroViewModel = CadastroViewModel()

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func okButton(_ sender: Any) {
        let pessoa = Pessoa(nome: nameTextField.text ?? "", telefone: phoneTextField.text ?? "", endereco: addressTextField.text ?? "", idade: ageTextField.text ?? "")
        cadastroViewModel.cadastro(pessoa: pessoa)
    }
    
}

extension ViewController: CadastroViewModelDelegate {
    func cadastroResultado(pessoa: Pessoa) {
        
        let alert = UIAlertController(title: "", message: "Cadastro Concluído com Sucesso!", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default) { myAlert in
            self.performSegue(withIdentifier: "showDetails", sender: pessoa)
        }
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}

