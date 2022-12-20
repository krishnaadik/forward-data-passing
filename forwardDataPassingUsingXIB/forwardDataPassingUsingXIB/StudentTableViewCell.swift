//
//  StudentTableViewCell.swift
//  forwardDataPassingUsingXIB
//
//  Created by Mac on 05/11/22.
//

import UIKit

class StudentTableViewCell: UITableViewCell,BackDataPassingProtocol {
    
    @IBOutlet weak var studentFirstName: UILabel!
    @IBOutlet weak var studentMiddleName: UILabel!
    @IBOutlet weak var studentLastName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func firstNamepassDataToFVC(textToPass: String) {
        self.studentFirstName.text = textToPass
    }
    
    func middleNamepassDataToFVC(textToPass: String) {
        self.studentMiddleName.text = textToPass
    }
    
    func lastNamepassDataToFVC(textToPass: String) {
        self.studentLastName.text = textToPass
    }
    
}
