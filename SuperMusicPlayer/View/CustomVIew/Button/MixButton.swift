//
//  MixButton.swift
//  SuperMusicPlayer
//
//  Created by Luiz Hammerli on 04/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class MixButton: UIButton{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 21
        self.setTitle("mix", for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        self.setTitleColor(UIColor(red: 49/255, green: 50/255, blue: 49/255, alpha: 1), for: .normal)
        self.setImage(#imageLiteral(resourceName: "mix").withRenderingMode(.alwaysOriginal), for: .normal)
        self.backgroundColor = .white
        self.imageEdgeInsets = UIEdgeInsets(top: 10, left: -1, bottom: 10, right: 10)
        self.imageView?.contentMode = .scaleAspectFit
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 2
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
