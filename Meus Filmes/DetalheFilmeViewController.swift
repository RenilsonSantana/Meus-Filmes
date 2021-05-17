//
//  DetalheFilmeViewController.swift
//  Meus Filmes
//
//  Created by Renilson Santana on 17/05/21.
//

import UIKit

class DetalheFilmeViewController: UIViewController {
    
    // MARK: - atributos
    
    var filme: Filme!
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var imagemFilme: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelDescricao: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configuraDetalhe()

        // Do any additional setup after loading the view.
    }
    
    func configuraDetalhe(){
        imagemFilme.image = filme.imagem
        labelTitulo.text = filme.titulo
        labelDescricao.text = filme.descricao
    }

}
