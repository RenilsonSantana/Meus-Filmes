//
//  ViewController.swift
//  Meus Filmes
//
//  Created by Renilson Santana on 12/05/21.
//

import UIKit

class ViewController: UITableViewController {
    
    // MARK: - Atributos
    
    var listaDeFilmes:[Filme] = []
    
    // MARK: - life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        preparaFilmes()
        tableView.reloadData()
    }
    
    // MARK: - Metodos

    func preparaFilmes(){
        if let imagem = UIImage(named: "filme1"){
            listaDeFilmes.append(Filme(titulo: "007 - Spectre", descricao: "descricao 1", imagem: imagem))
        }
        
        if let imagem = UIImage(named: "filme2"){
            listaDeFilmes.append(Filme(titulo: "Star Wars", descricao: "descricao 2", imagem: imagem))
        }
        
        if let imagem = UIImage(named: "filme3"){
            listaDeFilmes.append(Filme(titulo: "Impacto Mortal", descricao: "descricao 3", imagem: imagem))
        }
        
        if let imagem = UIImage(named: "filme4"){
            listaDeFilmes.append(Filme(titulo: "Deadpool", descricao: "descricao 4", imagem: imagem))
        }
        
        if let imagem = UIImage(named: "filme5"){
            listaDeFilmes.append(Filme(titulo: "O Regresso", descricao: "descricao 5", imagem: imagem))
        }
        
        if let imagem = UIImage(named: "filme6"){
            listaDeFilmes.append(Filme(titulo: "A Herdeira", descricao: "descricao 6", imagem: imagem))
        }
        
        if let imagem = UIImage(named: "filme7"){
            listaDeFilmes.append(Filme(titulo: "Cacadores de Emocões", descricao: "descricao 7", imagem: imagem))
        }
        
        if let imagem = UIImage(named: "filme8"){
            listaDeFilmes.append(Filme(titulo: "Regresso do mal", descricao: "descricao 8", imagem: imagem))
        }
        
        if let imagem = UIImage(named: "filme9"){
            listaDeFilmes.append(Filme(titulo: "Tarzan", descricao: "descricao 9", imagem: imagem))

        }
        
        if let imagem = UIImage(named: "filme10"){
            listaDeFilmes.append(Filme(titulo: "Hardcore", descricao: "descricao 10", imagem: imagem))
        }
        
    }
    
    // MARK: - UITableViewController
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDeFilmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "cellFilme", for: indexPath) as! TableViewCell
        celula.configuraColuna(filme: listaDeFilmes[indexPath.row])
        
        return celula
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetalhe"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let filmeSelecionado = self.listaDeFilmes[indexPath.row]
                let viewControllerDestino = segue.destination as! DetalheFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
            }
            
        }
    }
}

