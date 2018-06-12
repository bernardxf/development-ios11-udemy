//
//  CadastroTarefaViewController.swift
//  Lista de tarefas
//
//  Created by Rarolabs on 12/06/18.
//  Copyright © 2018 Curso iOS. All rights reserved.
//

import UIKit

class CadastroTarefaViewController: UIViewController {
    
    
    @IBOutlet weak var tarefaCampo: UITextField!
    
    @IBAction func adicionarTarefa(_ sender: Any) {
        
        if let textoDigitado = tarefaCampo.text {
            
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: textoDigitado)
            tarefaCampo.text = ""
            
            let dados = tarefa.listar()
            print(dados)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
