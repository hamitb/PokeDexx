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
    @IBOutlet weak var pokeName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokeName.text = pokemon.name
        
    }

}
