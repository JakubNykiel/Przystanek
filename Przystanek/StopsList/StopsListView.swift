//
//  StopsList.swift
//  Przystanek
//
//  Created by Jakub Nykiel on 25/10/2017.
//  Copyright © 2017 Jakub Nykiel. All rights reserved.
//

import UIKit

class StopsListView: UIView {
    
    @IBOutlet weak var stopsTableView: UITableView!
    private let nibName: String = "StopsListView"
    
    private func customInit() {
        self.setupXib(withNibNamed: self.nibName)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.customInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.customInit()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
