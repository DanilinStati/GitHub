//
//  UIView + Ext.swift
//  GitHub
//
//  Created by Даниил Статиев on 29.10.2020.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
    
}
