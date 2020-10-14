//
//  FollowerListVC.swift
//  GitHub
//
//  Created by Даниил Статиев on 13.10.2020.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true

    }

}
