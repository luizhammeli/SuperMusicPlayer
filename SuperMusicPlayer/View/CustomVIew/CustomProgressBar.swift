//
//  CustomProgressBar.swift
//  SuperMusicPlayer
//
//  Created by Mac on 19/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class CustomProgressBar: UIView{
    
    let progressBar: UIProgressView = {
        let progressView = UIProgressView()
        progressView.backgroundColor = .white
        progressView.progress = 0.5
        progressView.layer.cornerRadius = 4
        return progressView
    }()
    
    let currentTimeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.text = "00:00"
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let durationLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .right
        label.text = "02:47"
        label.font = UIFont.systemFont(ofSize: 12)
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
        let labelstackView = UIStackView(arrangedSubviews: [currentTimeLabel, durationLabel])
        labelstackView.axis = .horizontal
        labelstackView.distribution = .fillEqually
        
        let mainStackView = UIStackView(arrangedSubviews: [progressBar, labelstackView])
        mainStackView.axis = .vertical
        mainStackView.spacing = 10
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(mainStackView)
        
        progressBar.heightAnchor.constraint(equalToConstant: 1.5).isActive = true
        
        mainStackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainStackView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainStackView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        mainStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
