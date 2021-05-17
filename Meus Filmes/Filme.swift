//
//  Filme.swift
//  Meus Filmes
//
//  Created by Renilson Santana on 12/05/21.
//

import UIKit

class Filme{
    
    // MARK: - Atributos
    
    let titulo:String
    let descricao:String
    let imagem:UIImage
    
    // MARK: Init
    
    init(titulo:String, descricao:String, imagem:UIImage){
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}
