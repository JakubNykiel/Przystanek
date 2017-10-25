//
//  SetupXib.swift
//  Przystanek
//
//  Created by Jakub Nykiel on 25/10/2017.
//  Copyright © 2017 Jakub Nykiel. All rights reserved.
//

import UIKit

extension UIView {
    
    func setupXib(withNibNamed nibName: String) {
        
        let mainView = loadViewFromNib(nibName: nibName)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(mainView)
        
        mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        mainView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    private func loadViewFromNib(nibName: String) -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }
}
