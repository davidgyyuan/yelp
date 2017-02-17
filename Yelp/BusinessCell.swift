//
//  BusinessCell.swift
//  Yelp
//
//  Created by David Yuan on 2/16/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewsImageView: UIImageView!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var thumbImageView: UIImageView!
    
    @IBOutlet weak var reviewLabel: UILabel!
    var business: Business! {
        didSet{
            nameLabel.text = business.name
            thumbImageView.setImageWith(business.imageURL!)
            categoryLabel.text = business.categories
            addressLabel.text=business.address
            reviewLabel.text="\(business.reviewCount!) reviews"
            reviewsImageView.setImageWith(business.ratingImageURL!)
            distanceLabel.text = business.distance
           
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbImageView.layer.cornerRadius = 5
        thumbImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth=nameLabel.frame.size.width
        
        // Initialization code
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth=nameLabel.frame.size.width
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
