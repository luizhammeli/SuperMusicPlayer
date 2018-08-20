//
//  PlayerViewController.swift
//  SuperMusicPlayer
//
//  Created by Luiz Hammerli on 07/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController{
    
    var optionViewTopAnchor: NSLayoutConstraint?
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    let bannerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "maxresdefault")
        imageView.backgroundColor = .black
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let playerTopBar: TitleBar = {
        let player = TitleBar()
        player.setButtonData(leftButtonImage: #imageLiteral(resourceName: "dismiss-icon"), rightButtonImage: #imageLiteral(resourceName: "list-icon"), title: "PLAYLIST", subTitle: "Punk Pop", topFontLabel: 11, bottomFontLabel: 14)
        player.dismissButton.addTarget(self, action: #selector(didPressDismissButton), for: .touchUpInside)
        return player
    }()
    
    let musicInfopBar: TitleBar = {
        let player = TitleBar()
        player.setButtonData(leftButtonImage: #imageLiteral(resourceName: "like-icon"), rightButtonImage: #imageLiteral(resourceName: "deslike-icon"), title: "All The Small Things", subTitle: "Blink 182", topFontLabel: 16, bottomFontLabel: 12)
        return player
    }()
    
    let progressBar: CustomProgressBar = {
        let progressBar = CustomProgressBar()
        return progressBar
    }()
    
    let controlStation: PlayerControlStation = {
        let controlStation = PlayerControlStation()
        return controlStation
    }()
    
    lazy var optionView: PlayerOptionsView = {
        let optionView = PlayerOptionsView()
        optionView.translatesAutoresizingMaskIntoConstraints = false
        optionView.playerController = self
        return optionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    func setUpViews(){
        self.view.addSubview(bannerImageView)
        bannerImageView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        bannerImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        bannerImageView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        bannerImageView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        
        self.view.addSubview(playerTopBar)
        playerTopBar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        playerTopBar.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 12).isActive = true
        playerTopBar.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -12).isActive = true
        playerTopBar.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        setUpStackView()
    }
    
    func setUpStackView(){
        let firstGapView = UIView()
        let mainStackView = UIStackView(arrangedSubviews: [musicInfopBar, firstGapView, progressBar, controlStation, UIView()])
        mainStackView.axis = .vertical
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.spacing = 10
        self.view.addSubview(mainStackView)
        
        firstGapView.heightAnchor.constraint(equalToConstant: 10).isActive = true
        musicInfopBar.heightAnchor.constraint(equalToConstant: 30).isActive = true
        progressBar.heightAnchor.constraint(equalToConstant: 22).isActive = true
        controlStation.heightAnchor.constraint(equalToConstant: 54).isActive = true
            
        mainStackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        mainStackView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 12).isActive = true
        mainStackView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -12).isActive = true
        mainStackView.heightAnchor.constraint(equalToConstant: 230).isActive = true
        
        setPlayerOptionView()
    }
    
    func setPlayerOptionView(){
        self.view.addSubview(optionView)
        optionViewTopAnchor = optionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -64)
        optionViewTopAnchor?.isActive = true
        optionView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 14).isActive = true
        optionView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -14).isActive = true
        optionView.heightAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width)+138).isActive = true        
    }
    
    @objc func didPressDismissButton(){
        self.dismiss(animated: true, completion: nil)
    }
    
    func minimizeOptionView(){
        optionViewTopAnchor?.isActive = false
        optionViewTopAnchor?.constant = -64
        optionViewTopAnchor?.isActive = true
        self.view.layoutIfNeeded()
    }
    
    func maximizeOptionView(){
        optionViewTopAnchor?.isActive = false
        optionViewTopAnchor?.constant = -((UIScreen.main.bounds.width)+146)
        optionViewTopAnchor?.isActive = true
        self.view.layoutIfNeeded()
    }
}
