//
//  CustomDesignTableViewCell.swift
//  HomeWork 7 @IMeanHi
//
//  Created by Vakhtang on 17.12.2022.
//

import Foundation
import UIKit


    class CustomDesignTableViewCell: UITableViewCell {
        @IBOutlet weak var avatarImageView: UIImageView!
        @IBOutlet weak var nicknameLabel: UILabel!
        @IBOutlet weak var mainImageView: UIImageView!
        @IBOutlet weak var viewCounLabel: UILabel!
        @IBOutlet weak var descriptionLabel: UILabel!
        @IBOutlet weak var commentOfCountLabel: UILabel!
        @IBOutlet weak var postetAtLabel: UILabel!
        
       
        override func awakeFromNib() {
            super.awakeFromNib()
            avatarImageView.layer.cornerRadius = avatarImageView.layer.bounds.width / 2
            
        }
        
        
        
        func configure(with post: Post){
            
            
            avatarImageView.image = post.avatarImage
            mainImageView.image = post.mainImage
            nicknameLabel.text = post.avatarImageName
            descriptionLabel.text = "\(post.avatarImageName) " + "\(post.description)"
            viewCounLabel.text = "\(post.viewsCount) views"
            commentOfCountLabel.text = "View all \(post.countOfComments) comments"
            postetAtLabel.text = post.postedAt
            
            let boldText = (post.avatarImageName) + " "
                    let attrs = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 17)]
                    let atributedString = NSMutableAttributedString(string: boldText, attributes: attrs)
                    let normalText = post.description
                    let normalString = NSMutableAttributedString(string: normalText)
                    atributedString.append(normalString)
                    descriptionLabel.attributedText = atributedString
            
            nicknameLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
            
            viewCounLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
            
            
            
        }
        
    }
    

