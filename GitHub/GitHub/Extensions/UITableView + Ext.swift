//
//  UITableView + Ext.swift
//  GitHub
//
//  Created by Даниил Статиев on 29.10.2020.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
}
