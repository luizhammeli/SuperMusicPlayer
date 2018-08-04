//
//  ShareButton.swift
//  SuperMusicPlayer
//
//  Created by Luiz Hammerli on 04/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class OptionButton: UIView {
    
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsetsMake(11,11,11,11)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 225/255, green: 225/255, blue: 225/255, alpha: 1)
        button.layer.cornerRadius = 43/2
        return button
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false        
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 8)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .clear
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .clear
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        self.addSubview(button)
        button.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 43).isActive = true
        button.widthAnchor.constraint(equalToConstant: 43).isActive = true
        
        self.addSubview(label)
        label.topAnchor.constraint(equalTo: self.button.bottomAnchor, constant: 5).isActive = true
        label.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 13).isActive = true
    }
}
