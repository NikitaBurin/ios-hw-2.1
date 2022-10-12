//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Никита Бурин on 11.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let header = ProfileHeaderView()
    
    override func viewWillLayoutSubviews() {
        view.addSubview(header)
        header.backgroundColor = view.backgroundColor
        header.translatesAutoresizingMaskIntoConstraints = false
        header.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.bounds.width, height: view.bounds.height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Profile"
        tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 1)
    }
}
