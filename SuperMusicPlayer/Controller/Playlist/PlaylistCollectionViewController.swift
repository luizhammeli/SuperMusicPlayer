//
//  PlaylistCollectionViewController.swift
//  teste
//
//  Created by Mac on 13/01/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class PlaylistCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let headerCellId = "headerCellId"
    let cellId = "cellId"
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = #imageLiteral(resourceName: "t6").withRenderingMode(.alwaysOriginal)
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.backgroundColor = .red
        return iv
    }()
    
    let playButton: PlayButton = {
        let button = PlayButton()
        return button
    }()
    
    let mixButton: MixButton = {
        let button = MixButton()
        return button
    }()
    
    let backButton: UIButton = {
        let button = CustomBackButton()
        return button
    }()
    
    lazy var mainCollectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor.clear
        collectionView.scrollIndicatorInsets = UIEdgeInsets(top: 250, left: 0, bottom: 0, right: 0)
        return collectionView        
    }()

    var imageViewHeightAnchor:NSLayoutConstraint?
    var val = 0
    
    func setUpViews(){
        self.view.addSubview(imageView)
        self.view.addSubview(mainCollectionView)
        
        imageView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        imageViewHeightAnchor = UIScreen.main.nativeBounds.height == 2436 ? imageView.heightAnchor.constraint(equalToConstant: 220) : imageView.heightAnchor.constraint(equalToConstant: 180)
        
        imageViewHeightAnchor?.isActive = true
        
        setUpButtons()
        
        mainCollectionView.topAnchor.constraint(equalTo: self.playButton.bottomAnchor, constant: 6).isActive = true
        mainCollectionView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        mainCollectionView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        mainCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    func setUpButtons(){
        self.view.addSubview(playButton)
        self.view.addSubview(mixButton)
        self.view.addSubview(backButton)
        
        backButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40).isActive = true
        backButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: -5).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 78).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        playButton.bottomAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 20).isActive = true
        playButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 32).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: 110).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: 42).isActive = true
        
        mixButton.bottomAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 20).isActive = true
        mixButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -32).isActive = true
        mixButton.widthAnchor.constraint(equalToConstant: 110).isActive = true
        mixButton.heightAnchor.constraint(equalToConstant: 42).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        setUpCollectionView()
        setUpViews()
        self.view.backgroundColor = .white
    }
}
