//
//  ViewController.swift
//  Signos
//
//  Created by Rarolabs on 11/06/18.
//  Copyright © 2018 Curso iOS. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significadoSignos: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        significadoSignos.append("Áries")
        significadoSignos.append("Touro")
        significadoSignos.append("Gêmeos")
        significadoSignos.append("Câncer")
        significadoSignos.append("Leão")
        significadoSignos.append("Virgem")
        significadoSignos.append("Libra")
        significadoSignos.append("Escorpião")
        significadoSignos.append("Sagitário")
        significadoSignos.append("Capricórnio")
        significadoSignos.append("Aquário")
        significadoSignos.append("Peixes")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[ indexPath.row ]
        
        return celula
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "Significado do signo", message: significadoSignos[ indexPath.row ], preferredStyle: .alert)
        let acaoConfirmar = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        present( alertaController, animated: true, completion: nil )
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

