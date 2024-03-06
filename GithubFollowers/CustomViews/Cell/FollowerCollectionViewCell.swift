//
//  FollowerCollectionViewCell.swift
//  GithubFollowers
//
//  Created by Javlonbek Sharipov on 06/03/24.
//

import UIKit

class FollowerCollectionViewCell: UICollectionViewCell {
    static let ID = "FollowerCollectionViewCell"
    
    let avatarImage = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
        avatarImage.downloadImage(from: follower.avatarUrl)
    }
    
    private func configure() {
        addSubview(avatarImage)
        addSubview(usernameLabel)
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            avatarImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            avatarImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            avatarImage.heightAnchor.constraint(equalToConstant: contentView.frame.width - 5),
            avatarImage.widthAnchor.constraint(equalToConstant: contentView.frame.width - 5),
            
            usernameLabel.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            usernameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20),
            
        ])
    }
}
