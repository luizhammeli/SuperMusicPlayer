//
//  playerOptionsView+GestureRecognizer.swift
//  SuperMusicPlayer
//
//  Created by Mac on 19/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

extension PlayerOptionsView{
    
    func setUpGestureRecognizer(){
        self.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture)))
    }
    
    @objc func handlePanGesture(_ gesture: UIPanGestureRecognizer){
        if gesture.state == .changed{
            handlePanChanged(gesture)
        }else if gesture.state == .ended{
            handlePanEnded(gesture)
            
        }
    }
    
    func handlePanChanged(_ gesture: UIPanGestureRecognizer){
        let translation = gesture.translation(in: self.superview)
        self.transform = CGAffineTransform(translationX: 0, y: translation.y)
    }
    
    func handlePanEnded(_ gesture: UIPanGestureRecognizer){
        let translation = gesture.translation(in: self.superview)
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.transform = .identity
            
            if(translation.y <= -120 ){
                self.playerController?.maximizeOptionView()
            }else if(translation.y >= 60){
                self.playerController?.minimizeOptionView()
            }
            
        }, completion: nil)
    }
}
