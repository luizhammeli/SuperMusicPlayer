//
//  playlistController+Alert.swift
//  SuperMusicPlayer
//
//  Created by Luiz Hammerli on 04/08/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

extension PlaylistCollectionViewController{
    func showOptionButtonAlert(_ artistName: String, musicName: String){
        let alert = UIAlertController(title: artistName, message: musicName, preferredStyle: .actionSheet)
        let infoAction = UIAlertAction(title: "Informações", style: .default, handler: nil)
        let hateAction = UIAlertAction(title: "Odiar", style: .default, handler: nil)
        let loveAction = UIAlertAction(title: "Amar", style: .default, handler: nil)
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        
        alert.addAction(infoAction)
        alert.addAction(hateAction)
        alert.addAction(loveAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}
