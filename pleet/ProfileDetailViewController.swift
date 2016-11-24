//
//  ProfileDetailViewController.swift
//  pleet
//
//  Created by woongbook on 2016. 11. 24..
//
//

import UIKit

class ProfileDetailViewController: UIViewController {

    
    @IBOutlet weak var profileImageView: UIImageView!
    
    
    // 넘겨받은 사용자 프로필 정보를 담을 객체가 필요. 
    var userProfile = [String:String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height/2 // 반지름 만큼 코너를 줘서 동그랗게 만듭니다.
        profileImageView.layer.masksToBounds = true // 모서리를 동그랗게 해라
        profileImageView.layer.borderWidth = 0
        
        print(userProfile)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
