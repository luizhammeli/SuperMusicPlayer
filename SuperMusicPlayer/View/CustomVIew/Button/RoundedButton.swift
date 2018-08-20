//
//  RoundedButton.swift
//  SuperMusicPlayer
//
//  Created by Mac on 19/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class RoundedButton: UIButton{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        self.backgroundColor = UIColor.lightGray.withAlphaComponent(0.65)
        self.imageEdgeInsets = UIEdgeInsets(top: 5.8, left: 5.8, bottom: 5.8, right: 5.8)
        self.imageView?.contentMode = .scaleAspectFit
        self.layer.cornerRadius = 30/2
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
