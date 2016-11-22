//
//  NearListCell.swift
//  pleet
//
//  Created by woongbook on 2016. 11. 22..
//
//

import UIKit

/*
 NearList Table view 에 나타나는 주변사용자 카드(Cell) 입니다.
 */
class NearListCell: UITableViewCell {

    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileUserName: UILabel!
    @IBOutlet weak var profileSimpleMessage: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height/2
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.borderWidth = 0
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
