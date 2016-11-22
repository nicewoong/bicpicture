//
//  NearListViewController.swift
//  pleet
//
//  Created by woongbook on 2016. 11. 22..
//
//

import UIKit

class NearListViewController: UITableViewController {

    var currentNearUserList:[[String:String]] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        /* make test data */
        let firstPerson = ["profileImage":"firstProfileImage.png", "profileName":"firstNema", "profileSimpleMessage":"fisrtMessage"]
        let secondPerson = ["profileImage":"firstProfileImage.png", "profileName":"secondName", "profileSimpleMessage":"secondMessage"]
        let thirdPerson = ["profileImage":"firstProfileImage.png", "profileName":"thirdNema", "profileSimpleMessage":"thirdMessage"]
        
        currentNearUserList.append(firstPerson)
        currentNearUserList.append(secondPerson)
        currentNearUserList.append(thirdPerson)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /*table view의 섹션. -> override 안되어 있으면 default 값인 1 로 정해짐.
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

    /* row의 갯수 즉, 아이템 갯수를 반환해줘야 합니다. 
     -> 데이터 리스트의 크기를 반환해주면 될 것임 */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return currentNearUserList.count
    }

    /* 셀(아이템 카드뷰)의 데이터를 채워 넣어 줍니다. */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! NearListCell // 뷰를 재활용 하기 위해 큐에서 놀고 있는

        // Configure the cell...
        cell.profileImageView.image = UIImage(named: "fisrtProfileImage.png")
        cell.profileUserName.text = currentNearUserList[indexPath.row]["profileName"]
        cell.profileSimpleMessage.text = currentNearUserList[indexPath.row]["profileSimpleMessage"]
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
