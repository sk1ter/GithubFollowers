//
//  GFEmptyStateView.swift
//  GithubFollowers
//
//  Created by Javlonbek Sharipov on 07/03/24.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImage = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(message: String) {
        super.init(frame: .zero)
        messageLabel.text = message
        configure()
    }
    
    private func configure() {
        addSubview(messageLabel)
        addSubview(logoImage)
        
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        logoImage.image = UIImage(named: "empty")
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            logoImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImage.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 200),
            logoImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 40),
            
        ])
    }
}
