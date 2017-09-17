//
//  UpcomingTableViewCell.swift
//  MedicalOrganizer
//
//  Created by ZhouYiqin on 9/16/17.
//  Copyright © 2017 Yiqin Zhou. All rights reserved.
//

import UIKit

class UpcomingTableViewCell: UITableViewCell {

    @IBOutlet weak var Location: UILabel!
    
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var Time: UILabel!
   
    @IBOutlet weak var Date: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        Location.text = "whatever"
        Location.numberOfLines = 0
        Location.lineBreakMode = NSLineBreakMode.byWordWrapping
        Description.text = "whatever"
        Description.numberOfLines = 0
        Description.lineBreakMode = NSLineBreakMode.byWordWrapping
        Time.text = "whatever"
        Time.numberOfLines = 0
        Time.lineBreakMode = NSLineBreakMode.byWordWrapping
        Date.text = "whatever"
        Date.numberOfLines = 0
        Date.lineBreakMode = NSLineBreakMode.byWordWrapping
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
