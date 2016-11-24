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

    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileUserName: UILabel!
    @IBOutlet weak var profileSimpleMessage: UILabel!
    
    /* 해당 Cell 의 view 가 시작될 때. */
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height/2 // 반지름 만큼 코너를 줘서 동그랗게 만듭니다.
        profileImageView.layer.masksToBounds = true // 동그랗게 해라
        profileImageView.layer.borderWidth = 0
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
