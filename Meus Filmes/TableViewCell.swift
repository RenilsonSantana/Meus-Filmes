//
//  TableViewCell.swift
//  Meus Filmes
//
//  Created by Renilson Santana on 12/05/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelDescricao: UILabel!
    
    func configuraColuna(filme:Filme){
        imagem.image = filme.imagem
        labelTitulo.text = filme.titulo
        labelDescricao.text = filme.descricao
        imagem.layer.cornerRadius = 40
        imagem.layer.masksToBounds = true
        imagem.clipsToBounds = true
    }
    

}
