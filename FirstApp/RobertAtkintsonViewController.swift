//
//  RobertAtkintsonViewController.swift
//  FirstApp
//
//  Created by koshal singh shekhawat on 27/04/23.
//

import UIKit

class RobertAtkintsonViewController: UIViewController {
    
    //MARK: -> Outlets
    
    @IBOutlet weak var requsetNowButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requsetNowButton.layer.cornerRadius = 8
        
        
    }
    
    //MARK: -> BackButton Action
    
    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
    //MARK: -> tableView function extension
 
    extension RobertAtkintsonViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailsTableViewCell") as!
        DetailsTableViewCell
        
        cell.pickupView.layer.cornerRadius = 20
        cell.dropoffView.layer.cornerRadius = 20
        cell.backgroundview.layer.cornerRadius = 5
       return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
