//
//  TabBarViewController.swift
//  PickMenu
//
//  Created by 정명곤 on 2022/07/08.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()

        // Do any additional setup after loading the view.
    }
    
    func setupController() {
        let home = HomeViewController()
        home.title = "Home"
        let menu = MenuViewController()
        menu.title = "Menu"
        
        let nav1 = UINavigationController(rootViewController: home)
        
        let nav2 = UINavigationController(rootViewController: menu)
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "Home"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Menu", image: UIImage(systemName: "house"), tag: 2)
        
        setViewControllers([nav1, nav2], animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
