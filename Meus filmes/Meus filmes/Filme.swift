//
//  Filme.swift
//  Meus filmes
//
//  Created by Rarolabs on 11/06/18.
//  Copyright © 2018 Curso iOS. All rights reserved.
//

import UIKit

class Filme {
    
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    init (titulo: String, descricao: String, imagem: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
    
}
