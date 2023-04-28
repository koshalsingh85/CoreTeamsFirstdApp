//
//  DetailsTableViewCell.swift
//  FirstApp
//
//  Created by koshal singh shekhawat on 27/04/23.
//

import UIKit

class DetailsTableViewCell: UITableViewCell {

//MARK: -> Outlets
    @IBOutlet weak var pickupView: UIView!
    @IBOutlet weak var dropoffView: UIView!
    @IBOutlet weak var backgroundview: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
