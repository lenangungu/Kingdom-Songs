//
//  FavoritesTableViewCell.swift
//  Kingdom Songs
//
//  Created by Lena Ngungu on 9/9/16.
//  Copyright © 2016 Lena Ngungu Corp. All rights reserved.
//

import UIKit

class FavoritesTableViewCell: UITableViewCell {

    @IBOutlet weak var favTitle: UILabel!
    @IBOutlet weak var favNumber: UILabel!
    var num: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
