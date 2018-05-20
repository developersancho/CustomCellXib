//
//  TableViewCell1.swift
//  CustomCellXib
//
//  Created by developersancho on 20.05.2018.
//  Copyright © 2018 developersancho. All rights reserved.
//

import UIKit

class TableViewCell1: UITableViewCell {

    
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
