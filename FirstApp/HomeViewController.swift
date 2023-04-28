//
//  HomeViewController.swift
//  FirstApp
//
//  Created by koshal singh shekhawat on 27/04/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: -> Outlets
    @IBOutlet weak var completedButton: UIButton!
    @IBOutlet weak var progressButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: -> Array
    var name = ["Armstorng Michael","Arnott Craig","Aspinll Dr S"]
    var address = ["161 Sussex St,Sydney,NSW 2001","Lvl6/ 180 Phillip St,Sydney,NSW 2000","NY,Abraham Mount Suite 522"]
    var pickup = ["Pickup","Load","Pickup"]
    var profile = ["1st profile","2nd profile","3rd profile"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: -> cornerRadius
        progressButton.layer.cornerRadius = 10
        completedButton.layer.cornerRadius = 10
        completedButton.layer.borderWidth = 0.2
        completedButton.layer.borderColor = UIColor(red: 24/255, green: 44/255, blue: 97/255, alpha: 1) .cgColor
        
    }
}
    
//MARK: ->  tableView function extension
    
extension HomeViewController: UITableViewDelegate,UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 3
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "DispatchedTableViewCell") as! DispatchedTableViewCell
            // Set BackgroundColor yellow
            if indexPath.row == 0 {
                cell.backgroundview.backgroundColor = UIColor(red: 193/255, green: 226/255, blue: 245/255, alpha: 1)
                
                cell.cornerImage.tintColor = UIColor(red: 193/255, green: 226/255, blue: 245/255, alpha: 1)
                
            }
            else if indexPath.row == 1 {
                cell.pickupLable.backgroundColor = .systemGreen
                cell.cornerImage.tintColor = .white
                cell.backgroundview.backgroundColor = .white
            }
            // Set BorderColor yellow
            else if indexPath.row == 2 {
                cell.backgroundview.backgroundColor = UIColor(red: 249/255, green: 226/255, blue: 77/255, alpha: 1)
                cell.cornerImage.tintColor = UIColor(red: 249/255, green: 226/255, blue: 77/255, alpha: 1)
            }
            cell.backgroundview.layer.cornerRadius = 10
            cell.nameLabel.text = name[indexPath.row]
            cell.viewForImgae.layer.cornerRadius = 18
            cell.addressLabel.text = address[indexPath.row]
            cell.pickupLable.layer.cornerRadius = 8
            cell.pickupLable.text = pickup[indexPath.row]
            cell.profileImage.image = UIImage(named: profile[indexPath.row])
            cell.viewForImgae.layer.borderWidth = 1
            // Set BorderColor white
            cell.viewForImgae.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1) .cgColor
            
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            
            let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "RobertAtkintsonViewController") as! RobertAtkintsonViewController
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
}

