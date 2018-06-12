//
//  TarefaUserDefaults.swift
//  Lista de tarefas
//
//  Created by Rarolabs on 12/06/18.
//  Copyright © 2018 Curso iOS. All rights reserved.
//

import UIKit

class TarefaUserDefaults {
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func salvar( tarefa: String ) {
        
        tarefas = listar()
        
        tarefas.append( tarefa )
        UserDefaults.standard.set( tarefas, forKey: chave )
        
    }
    
    func remover(indice: Int) {
        
        tarefas = listar()
        tarefas.remove(at: indice)
        UserDefaults.standard.set( tarefas, forKey: chave )
        
    }
    
    func listar() -> Array<String> {
        
        let dados = UserDefaults.standard.object( forKey: chave )
        
        if dados != nil {
            return dados as! Array<String>
        } else {
            return []
        }
        
    }
}
