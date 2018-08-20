//
//  ConfigurationBar.swift
//  SuperMusicPlayer
//
//  Created by Luiz Hammerli on 13/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ConfigarationBar: UIView {
    
    let downloadButton: OptionButton = {
        let shareButton = OptionButton()
        shareButton.button.setImage(#imageLiteral(resourceName: "down").withRenderingMode(.alwaysOriginal), for: .normal)
        shareButton.label.text = "Downloads"
        return shareButton
    }()
    
    let qualityButton: OptionButton = {
        let shareButton = OptionButton()
        shareButton.button.setImage(#imageLiteral(resourceName: "eq").withRenderingMode(.alwaysOriginal), for: .normal)
        shareButton.label.text = "Qualidade"
        return shareButton
    }()
    
    let configButton: OptionButton = {
        let shareButton = OptionButton()
        shareButton.button.setImage(#imageLiteral(resourceName: "star2").withRenderingMode(.alwaysOriginal), for: .normal)
        shareButton.label.text = "Configurações"
        return shareButton
    }()
    
    let shareButton: OptionButton = {
        let shareButton = OptionButton()
        shareButton.button.setImage(#imageLiteral(resourceName: "share").withRenderingMode(.alwaysOriginal), for: .normal)
        shareButton.label.text = "Compartilhar"
        return shareButton
    }()
    
    let optionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "opções"
        label.font = UIFont.boldSystemFont(ofSize: 12.5)
        label.textColor = UIColor(red: 49/255, green: 50/255, blue: 49/255, alpha: 1)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews(){
        self.addSubview(optionLabel)
        
        optionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        optionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 14).isActive = true
        optionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -14).isActive = true
        optionLabel.heightAnchor.constraint(equalToConstant: 11).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [downloadButton, configButton, qualityButton, shareButton])
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: self.optionLabel.bottomAnchor, constant: 0).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        stackView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 4).isActive = true
        stackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -4).isActive = true
    }
}
