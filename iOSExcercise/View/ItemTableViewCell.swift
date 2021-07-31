//
//  ItemTableViewCell.swift
//  iOSExcercise
//
//  Created by Jesus Ruiz on 7/30/21.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var day: UILabel!
    @IBOutlet weak var descrip: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setup(item: Item){
        self.title.text = item.title
        self.day.text = days(day: item.details.day)
        self.descrip.text = item.details.description
    }
    
    private func days(day: Int) -> String {
        switch(day) {
            case 1: return "Monday"
            case 2: return "Tuesday"
            case 3: return "Wednesday"
            case 4: return "Thursday"
            case 5: return "Friday"
            case 6: return "Saturday"
            case 7: return "Sunday"
            default: return ""
        }
    }

}
