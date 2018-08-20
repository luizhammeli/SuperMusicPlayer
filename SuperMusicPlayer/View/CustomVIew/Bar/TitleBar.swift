//
//  TitleBar.swift
//  SuperMusicPlayer
//
//  Created by Mac on 19/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class TitleBar: UIView{
    
    let dismissButton: RoundedButton = {
        let button = RoundedButton(type: .system)
        return button
    }()
    
    let listButton: RoundedButton = {
        let button = RoundedButton(type: .system)
        return button
    }()
    
    let playlistLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        label.shadowColor = .black
        label.shadowOffset = CGSize(width: 0.8, height: 0.8)
        return label
    }()
    
    let playlistNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.shadowColor = .black
        label.shadowOffset = CGSize(width: 0.8, height: 0.8)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        setUpViews()
    }
    
    func setButtonData(leftButtonImage: UIImage, rightButtonImage: UIImage, title: String, subTitle: String, topFontLabel: CGFloat, bottomFontLabel: CGFloat){
        dismissButton.setImage(leftButtonImage.withRenderingMode(.alwaysOriginal), for: .normal)
        listButton.setImage(rightButtonImage.withRenderingMode(.alwaysOriginal), for: .normal)
        playlistLabel.text = title
        playlistNameLabel.text = subTitle
        playlistLabel.font = UIFont.systemFont(ofSize: topFontLabel, weight: .regular)
        playlistNameLabel.font = UIFont.systemFont(ofSize: bottomFontLabel, weight: .regular)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews(){
        let labelstackView = UIStackView(arrangedSubviews: [playlistLabel, playlistNameLabel])
        labelstackView.axis = .vertical
        labelstackView.distribution = .fillEqually
        
        let mainStackView = UIStackView(arrangedSubviews: [dismissButton, labelstackView, listButton])
        mainStackView.axis = .horizontal
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(mainStackView)
        
        dismissButton.widthAnchor.constraint(equalToConstant:30).isActive = true
        listButton.widthAnchor.constraint(equalToConstant:30).isActive = true
        
        mainStackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainStackView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 6).isActive = true
        mainStackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -6).isActive = true
        mainStackView.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
