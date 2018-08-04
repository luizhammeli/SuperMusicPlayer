//
//  MusicCollectionViewCell.swift
//  SuperMusicPalyer
//
//  Created by Mac on 14/01/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class MusicCollectionViewCell: UICollectionViewCell {
    
    weak var delegate: PlaylistCollectionViewController? = nil
    
    let albumCoverImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = #imageLiteral(resourceName: "fight").withRenderingMode(.alwaysOriginal)
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    let artistNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Fightstar"
        label.font = UIFont.systemFont(ofSize: 11)
        label.textColor = UIColor.darkGray
        return label
    }()
    
    let musicNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Chemical Blood"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = UIColor(red: 49/255, green: 50/255, blue: 49/255, alpha: 1)
        return label
    }()
    
    lazy var optionsButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false                        
        button.setImage(#imageLiteral(resourceName: "dots").withRenderingMode(.alwaysOriginal), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.addTarget(self, action: #selector(handleOptionsButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpviews(){
        self.addSubview(albumCoverImageView)
        self.addSubview(artistNameLabel)
        self.addSubview(musicNameLabel)
        self.addSubview(optionsButton)
        
        albumCoverImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 6).isActive = true
        albumCoverImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 14).isActive = true
        albumCoverImageView.heightAnchor.constraint(equalToConstant: 45).isActive = true
        albumCoverImageView.widthAnchor.constraint(equalToConstant: 45).isActive = true
        
        artistNameLabel.centerYAnchor.constraint(equalTo: albumCoverImageView.centerYAnchor, constant: 6).isActive = true
        artistNameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        artistNameLabel.leftAnchor.constraint(equalTo: self.albumCoverImageView.rightAnchor, constant: 8).isActive = true
        artistNameLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
        musicNameLabel.bottomAnchor.constraint(equalTo: artistNameLabel.topAnchor, constant: 0).isActive = true
        musicNameLabel.leftAnchor.constraint(equalTo: artistNameLabel.leftAnchor, constant: 0).isActive = true
        musicNameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        musicNameLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        optionsButton.centerYAnchor.constraint(equalTo: albumCoverImageView.centerYAnchor, constant: 0).isActive = true
        optionsButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -14).isActive = true
        optionsButton.heightAnchor.constraint(equalToConstant: 22).isActive = true
        optionsButton.widthAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    @objc func handleOptionsButton(){
        delegate?.showOptionButtonAlert(artistNameLabel.text!, musicName: musicNameLabel.text!)
    }
}
