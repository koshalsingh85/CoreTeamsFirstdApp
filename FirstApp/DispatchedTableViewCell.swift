//
//  DispatchedTableViewCell.swift
//  FirstApp
//
//  Created by koshal singh shekhawat on 27/04/23.
//

import UIKit

class DispatchedTableViewCell: UITableViewCell {

    //MARK: -> Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var viewForImgae: UIView!
    @IBOutlet weak var pickupLable: UILabel!
    @IBOutlet weak var backgroundview: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var cornerImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
