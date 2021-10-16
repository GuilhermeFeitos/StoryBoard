//
//  CadastroViewModel.swift
//  Tela Cadastro + Alerts
//
//  Created by Gui Feitosa on 16/10/21.
//

import Foundation

protocol CadastroViewModelDelegate {
    func cadastroResultado(pessoa: Pessoa)
}

class CadastroViewModel {
    
    var delegate: CadastroViewModelDelegate?
    
    func cadastro(pessoa: Pessoa) {
        delegate?.cadastroResultado(pessoa: pessoa)
    }
}
