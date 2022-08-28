//
//  personInfoTableViewCell.swift
//  Death_Note
//
//  Created by shimada shun on 2022/08/21.
//

import UIKit

class personInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var personInfo : (String, String, String)? {
        didSet {
            if let p = personInfo {
                nameLabel?.text = p.0
                timeLabel?.text = p.1
                descriptionLabel?.text = p.2
            }
        }
    }

}
