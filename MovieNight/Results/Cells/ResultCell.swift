//
//  ResultCell.swift
//  MovieNight
//
//  Created by Mohammed Al-Dahleh on 2018-01-30.
//  Copyright © 2018 Mohammed Al-Dahleh. All rights reserved.
//

import UIKit

class ResultCell: UITableViewCell {
    static let ReuseIdentifier = "resultCell"

    // MARK: - Interface Builder Outlets
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    // MARK: - Initalize view
    func populateView(with model: ResultViewModel) {
        titleLabel.text = model.mediaName
        descriptionLabel.text = model.mediaDescription
        ratingLabel.text = "Rating: \(model.mediaRating)/10"
        yearLabel.text = model.mediaYear
        
        if let poster = model.mediaPoster {
            posterView.image = poster
        }
    }
}
