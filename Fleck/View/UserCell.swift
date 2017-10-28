//
//  UserCell.swift
//  Fleck
//
//  Created by macuser1 on 26/10/2017.
//  Copyright © 2017 Neptune. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    
    let profileImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 24
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private func setupConstrainsts() {
        // x,y, width and height
        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        profileImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 48).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
    private func addViewsToCell() {
        addSubview(profileImageView)
    }
    
    //MARK: LAYOUT SUBVIEWS
    override func layoutSubviews() {
        super.layoutSubviews()
        
        textLabel?.frame = CGRect(x: 60,
                                  y: textLabel!.frame.origin.y,
                                  width: textLabel!.frame.width,
                                  height: textLabel!.frame.height - 2)
        detailTextLabel?.frame =  CGRect(x: 60,
                                         y: detailTextLabel!.frame.origin.y,
                                         width: detailTextLabel!.frame.width,
                                         height: detailTextLabel!.frame.height + 2)
    }
    
    
    // MARK: INIT
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        addViewsToCell()
        setupConstrainsts()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
