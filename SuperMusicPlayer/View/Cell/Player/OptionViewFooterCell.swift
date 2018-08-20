//
//  OptionViewFooterCell.swift
//  SuperMusicPlayer
//
//  Created by Mac on 18/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class OptionViewFooterCell: UICollectionViewCell{
    
    let listButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Ver todas", for: .normal)
        button.setTitleColor(UIColor(red: 192/255, green: 57/255, blue: 43/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.setImage(#imageLiteral(resourceName: "icons8-lista-100").withRenderingMode(.alwaysOriginal), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: -26, bottom: 0, right: 0)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews(){
        self.addSubview(listButton)
        listButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        listButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        listButton.heightAnchor.constraint(equalToConstant: 16).isActive = true
        listButton.widthAnchor.constraint(equalToConstant: 110).isActive = true
    }
}
