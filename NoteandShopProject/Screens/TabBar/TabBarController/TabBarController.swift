//
//  TabBarController.swift
//  NoteandShopProject
//
//  Created by Saeed on 13/11/24.
//

import UIKit

class TabBarController: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabbar()
    }
    
    func setupTabbar() {
        let homeVC = UINavigationController(rootViewController: MainViewController())
        let notesVC = UINavigationController(rootViewController: NotesViewController())
        let reminderVC = UINavigationController(rootViewController: ReminderViewController())
        let accountVC = UINavigationController(rootViewController: AccountViewController())
        
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "Home"), tag: 0)
        notesVC.tabBarItem = UITabBarItem(title: "Notes", image: UIImage(named: "Notes"), tag: 1)
        reminderVC.tabBarItem = UITabBarItem(title: "Reminder", image:UIImage(named: "Reminder"), tag: 2)
        accountVC.tabBarItem = UITabBarItem(title: "Account", image: UIImage(named: "Account"), tag: 3)
        
        
        viewControllers = [homeVC, notesVC, reminderVC, accountVC]
        
        tabBar.isTranslucent = false
        tabBar.backgroundColor = UIColor(named: "Fon")
        tabBar.tintColor = UIColor(named: "Tabbar")
        tabBar.unselectedItemTintColor = .gray
    }
}
