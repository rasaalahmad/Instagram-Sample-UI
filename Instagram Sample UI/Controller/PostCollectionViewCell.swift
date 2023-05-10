//
//  PostCollectionViewCell.swift
//  Instagram Sample UI
//
//  Created by Rasaal Ahmad on 09/05/2023.
//

import UIKit

class PostCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var userProfileImage: UIImageView!
    @IBOutlet weak var userProfileName: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    
    func setup(post:Post){
        userProfileName.text = post.userName
        userProfileImage.image = post.userImage
        userProfileImage.setRounded()
        postImage.image = post.postImage
    }
    
}


//MARK: - UIImageView
extension UIImageView {

   func setRounded() {
      let radius = CGRectGetWidth(self.frame) / 2
      self.layer.cornerRadius = radius
      self.layer.masksToBounds = true
   }
}
