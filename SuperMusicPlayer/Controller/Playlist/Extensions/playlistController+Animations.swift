//
//  playlistController+Animations.swift
//  SuperMusicPlayer
//
//  Created by Luiz Hammerli on 04/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

extension PlaylistCollectionViewController{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if(scrollView.contentOffset.y > 0){
            imageViewHeightAnchor?.isActive = false
            imageViewHeightAnchor = imageView.heightAnchor.constraint(equalToConstant: 95)
            imageViewHeightAnchor?.isActive = true
            
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.7, options: .curveEaseOut, animations: {
                self.view.layoutIfNeeded()
            }, completion: nil)
            
        }else{
            if(val < 2){
                val+=1
                return
            }
            
            imageViewHeightAnchor?.isActive = false
            imageViewHeightAnchor = imageView.heightAnchor.constraint(equalToConstant: 180)
            imageViewHeightAnchor?.isActive = true
            
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
    }
}
