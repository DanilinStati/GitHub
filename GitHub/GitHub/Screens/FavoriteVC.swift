//
//  FavoriteVC.swift
//  GitHub
//
//  Created by Даниил Статиев on 11.10.2020.
//

import UIKit

class FavoriteVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }
    
}
