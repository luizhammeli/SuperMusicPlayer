//
//  HeaderCell.swift
//  teste
//
//  Created by Mac on 13/01/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class HeaderCell: UICollectionViewCell{
    
    //MARK: Declare Views
    let playlistLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "PLAYLIST"
        label.font = UIFont.systemFont(ofSize: 12.5)
        label.textColor = UIColor(red: 49/255, green: 50/255, blue: 49/255, alpha: 1)
        return label
    }()
    
    let playlistTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pé na Estrada"
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.textColor = UIColor(red: 49/255, green: 50/255, blue: 49/255, alpha: 1)        
        return label
    }()
    
    let playlistDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Músicas que vão fazer você querer arrumar as malas e rodar por aí."
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor(red: 49/255, green: 50/255, blue: 49/255, alpha: 1)
        label.numberOfLines = 0
        return label
    }()
    
    let musicLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "MÚSICAS"
        label.font = UIFont.boldSystemFont(ofSize: 10)
        label.textColor = UIColor.black
        return label
    }()
    
    let separatorView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        return view
    }()
    
    let configBar: ConfigarationBar = {
        let configarationBar = ConfigarationBar()
        configarationBar.translatesAutoresizingMaskIntoConstraints = false
        return configarationBar
    }()
    
    //MARK: Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white        
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Setup Views Constraints
    func setUpViews(){
        self.addSubview(playlistLabel)
        self.addSubview(playlistTitleLabel)
        self.addSubview(playlistDescriptionLabel)
        self.addSubview(separatorView)
        self.addSubview(configBar)
        self.addSubview(musicLabel)
        
        playlistLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 6).isActive = true
        playlistLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 14).isActive = true
        playlistLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        playlistLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        playlistTitleLabel.topAnchor.constraint(equalTo: self.playlistLabel.bottomAnchor, constant: 3).isActive = true
        playlistTitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 14).isActive = true
        playlistTitleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        playlistTitleLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        playlistDescriptionLabel.topAnchor.constraint(equalTo: self.playlistTitleLabel.bottomAnchor, constant: 14).isActive = true
        playlistDescriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15.5).isActive = true
        playlistDescriptionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12).isActive = true
        playlistDescriptionLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        separatorView.topAnchor.constraint(equalTo: self.playlistDescriptionLabel.bottomAnchor, constant: 16).isActive = true
        separatorView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 14).isActive = true
        separatorView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -14).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 0.8).isActive = true
        
        configBar.topAnchor.constraint(equalTo: self.separatorView.bottomAnchor, constant: 10).isActive = true
        configBar.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        configBar.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        configBar.heightAnchor.constraint(equalToConstant: 86).isActive = true
        
        musicLabel.topAnchor.constraint(equalTo: configBar.bottomAnchor, constant: 40).isActive = true
        musicLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        musicLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        musicLabel.heightAnchor.constraint(equalToConstant: 11).isActive = true
    }
}
