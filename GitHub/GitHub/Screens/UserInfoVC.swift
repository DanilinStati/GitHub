//
//  UserInfoVC.swift
//  GitHub
//
//  Created by Даниил Статиев on 18.10.2020.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        print(username!)

    }
    
    @objc fileprivate func dismissVC() {
        dismiss(animated: true)
    }

}
