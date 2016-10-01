//
//  SongTableViewCell.swift
//  Kingdom Songs
//
//  Created by Lena Ngungu on 9/9/16.
//  Copyright © 2016 Lena Ngungu Corp. All rights reserved.
//

import UIKit

class SongTableViewCell: UITableViewCell {

    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var title: UILabel!
    var num: String?
    var songImage: UIImage?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
