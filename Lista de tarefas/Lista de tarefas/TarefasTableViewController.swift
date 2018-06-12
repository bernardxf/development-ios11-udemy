//
//  TarefasTableViewController.swift
//  Lista de tarefas
//
//  Created by Rarolabs on 12/06/18.
//  Copyright © 2018 Curso iOS. All rights reserved.
//

import UIKit

class TarefasTableViewController: UITableViewController {
    
    var tarefas: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            
            let tarefa = TarefaUserDefaults()
            tarefa.remover(indice: indexPath.row )
            atualizarListaTarefas()
            
        }
        
    }
    
    func atualizarListaTarefas() {
        
        let tarefa = TarefaUserDefaults()
        tarefas = tarefa.listar()
        tableView.reloadData()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        atualizarListaTarefas()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tarefas.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        
        celula.textLabel?.text = tarefas[ indexPath.row ]
        
        return celula
    }

}
