//
//  PlayerControlStation.swift
//  SuperMusicPlayer
//
//  Created by Mac on 19/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class PlayerControlStation: UIView{
    
    let rewindButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(#imageLiteral(resourceName: "rewind-icon").withRenderingMode(.alwaysOriginal), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        return button
    }()
    
    let fastButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(#imageLiteral(resourceName: "fast-icon").withRenderingMode(.alwaysOriginal), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        return button
    }()
    
    let playButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(#imageLiteral(resourceName: "play-icon").withRenderingMode(.alwaysOriginal), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
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
        self.addSubview(rewindButton)
        self.addSubview(fastButton)
        self.addSubview(playButton)
        
        playButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: 54).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: 54).isActive = true
        playButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        fastButton.leftAnchor.constraint(equalTo: self.playButton.rightAnchor, constant: 38).isActive = true
        fastButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        fastButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        fastButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        rewindButton.rightAnchor.constraint(equalTo: self.playButton.leftAnchor, constant: -38).isActive = true
        rewindButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        rewindButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        rewindButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
}
