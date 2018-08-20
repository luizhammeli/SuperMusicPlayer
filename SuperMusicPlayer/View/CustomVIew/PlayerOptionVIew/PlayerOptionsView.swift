//
//  PlayerOptionsView.swift
//  SuperMusicPlayer
//
//  Created by Mac on 19/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class PlayerOptionsView: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let cellID = "cellID"
    let headerCellID = "headerCellID"
    let footerCellID = "footerCellID"
    
    weak var playerController: PlayerViewController?
    
    let configBar: ConfigarationBar = {
        let configarationBar = ConfigarationBar()
        configarationBar.translatesAutoresizingMaskIntoConstraints = false
        return configarationBar
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.groupTableViewBackground.withAlphaComponent(1)
        self.layer.cornerRadius = 18
        self.mainCollectionView.register(MusicCollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        self.mainCollectionView.register(OptionViewHeaderCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerCellID)
        self.mainCollectionView.register(OptionViewFooterCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footerCellID)
        setUpViews()
        setUpGestureRecognizer()
    }
    
    lazy var mainCollectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor.clear
        collectionView.scrollIndicatorInsets = UIEdgeInsets(top: 250, left: 0, bottom: 0, right: 0)
        return collectionView
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews(){
        self.addSubview(configBar)
        configBar.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        configBar.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
        configBar.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12).isActive = true
        configBar.heightAnchor.constraint(equalToConstant: 86).isActive = true
        
        self.addSubview(mainCollectionView)
        mainCollectionView.topAnchor.constraint(equalTo: configBar.bottomAnchor, constant: 42).isActive = true
        mainCollectionView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        mainCollectionView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        mainCollectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
    }
}
