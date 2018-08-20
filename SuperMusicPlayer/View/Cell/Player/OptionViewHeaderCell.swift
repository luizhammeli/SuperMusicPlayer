//
//  OptionViewHeaderCell.swift
//  SuperMusicPlayer
//
//  Created by Luiz Hammerli on 14/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class OptionViewHeaderCell: UICollectionViewCell{
    
    //MARK: Declare Views
    let playlistLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "PLAYLIST MIXADAS"
        label.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        label.textColor = UIColor.black
        return label
    }()
    
    let playlistView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.backgroundColor = UIColor(red: 225/255, green: 225/255, blue: 225/255, alpha: 1)
        view.layer.cornerRadius = 36/2
        view.layer.masksToBounds = true
        view.layer.borderColor = UIColor(red: 166/255, green: 33/255, blue: 34/255, alpha: 1).cgColor
        return view
    }()
    
    let musicLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "PRÓXIMAS MÚSICAS"
        label.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        label.textColor = UIColor.black
        return label
    }()
    
    let playlistNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Punk Pop"
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = UIColor.darkGray
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
        
        self.addSubview(playlistLabel)
        playlistLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 2).isActive = true
        playlistLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 18).isActive = true
        
        self.addSubview(playlistView)
        playlistView.topAnchor.constraint(equalTo: playlistLabel.bottomAnchor, constant: 8).isActive = true
        playlistView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        playlistView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        playlistView.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        self.addSubview(playlistNameLabel)
        playlistNameLabel.centerYAnchor.constraint(equalTo: playlistView.centerYAnchor).isActive = true
        playlistNameLabel.leftAnchor.constraint(equalTo: playlistView.leftAnchor, constant: 14).isActive = true
        
        self.addSubview(musicLabel)
        musicLabel.topAnchor.constraint(equalTo: playlistView.bottomAnchor, constant: 28).isActive = true
        musicLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 18).isActive = true
    }
}
