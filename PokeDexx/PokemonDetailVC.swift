//
//  PokemonDetailVC.swift
//  PokeDexx
//
//  Created by Hamit Burak Emre on 18/02/17.
//  Copyright © 2017 Hamit Burak Emre. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var pokeIdLabel: UILabel!
    @IBOutlet weak var baseAttackLabel: UILabel!
    @IBOutlet weak var currentEvoImage: UIImageView!
    @IBOutlet weak var nextEvoImage: UIImageView!
    @IBOutlet weak var evoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = pokemon.name.capitalized
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImage.image = img
        currentEvoImage.image = img
        pokeIdLabel.text = "\(pokemon.pokedexId)"
        
        

        pokemon.downloadPokemonDetail {
            //Whatever we write here will only be called after the network call is complete!
            self.updateUI()
        }
        
    }
    
    func updateUI() {
        baseAttackLabel.text = pokemon.attack
        heightLabel.text = pokemon.height
        weightLabel.text = pokemon.weight
        defenseLabel.text = pokemon.defense
        typeLabel.text = pokemon.type
        
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
}
