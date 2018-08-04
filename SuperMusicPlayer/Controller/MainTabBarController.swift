//
//  MainTabBarController.swift
//  teste
//
//  Created by Mac on 20/01/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setUpMainTabBarController()
    }
    
    func setUpMainTabBarController(){
        let homeViewController = templateNavController(selectedImage: #imageLiteral(resourceName: "fire-selected").withRenderingMode(.alwaysOriginal), unselectedImage: #imageLiteral(resourceName: "fire2").withRenderingMode(.alwaysOriginal), viewController: PlaylistCollectionViewController(), title: "Destaques")
        
        let searchContentViewController = templateNavController(selectedImage: #imageLiteral(resourceName: "comp-selected").withRenderingMode(.alwaysOriginal) , unselectedImage: #imageLiteral(resourceName: "comp").withRenderingMode(.alwaysOriginal),title: "Explorar")
        
        let newsViewController = templateNavController(selectedImage: #imageLiteral(resourceName: "coll-selected").withRenderingMode(.alwaysOriginal), unselectedImage: #imageLiteral(resourceName: "coll").withRenderingMode(.alwaysOriginal), title: "Sua Coleção")
        
        let notesViewController = templateNavController(selectedImage: #imageLiteral(resourceName: "search-selected").withRenderingMode(.alwaysOriginal), unselectedImage: #imageLiteral(resourceName: "search").withRenderingMode(.alwaysOriginal), title: "Buscar")
        
        self.viewControllers  = [homeViewController, searchContentViewController, newsViewController, notesViewController,  notesViewController]
        
        tabBar.tintColor = UIColor(red: 231/255, green: 76/255, blue: 60/255, alpha: 1)
        tabBar.barTintColor = UIColor.black
        guard let itens = tabBar.items else{return}
        
        for item in itens{            
            item.setTitleTextAttributes([NSAttributedStringKey.font : UIFont.systemFont(ofSize: 9)], for: .normal)
            item.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -3)
        }        
    }
    
    func templateNavController(selectedImage: UIImage, unselectedImage: UIImage, viewController: UIViewController = UIViewController(), title: String)-> UINavigationController{
        let navController = CustomNavigationController(rootViewController: viewController)
        navController.tabBarItem.selectedImage = selectedImage
        navController.tabBarItem.image = unselectedImage
        navController.tabBarItem.title = title
        return navController
    }
}
