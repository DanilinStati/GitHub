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
        
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let user):
                print(user)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Sometging went wrong", message: error.rawValue, buttonTitle: "Ok")
            }
        }

    }
    
    @objc fileprivate func dismissVC() {
        dismiss(animated: true)
    }

}
