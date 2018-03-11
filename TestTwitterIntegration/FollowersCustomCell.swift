//
//  FollowersCustomCell.swift
//  TestTwitterIntegration
//
//  Created by Admin on 3/11/18.
//  Copyright © 2018 ITI. All rights reserved.
//

import UIKit

class FollowersCustomCell: UITableViewCell {

    @IBOutlet weak var followerImage: UIImageView!
    
    @IBOutlet weak var followerName: UILabel!
    
    
    
    @IBOutlet weak var bio: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
