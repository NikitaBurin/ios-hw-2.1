//
//  FeedViewController.swift
//  Navigation
//
//  Created by Никита Бурин on 07.10.2022.
//

import UIKit

class FeedViewController: UIViewController {

    var post: Post = Post(title: "Your post")
    let button = UIButton(frame: CGRect(x: 10, y: 100, width: 180, height: 30))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Feed"
        tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "doc.richtext"), tag: 0)
        
        view.addSubview(button)
        button.layer.cornerRadius = 15
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.setTitle(post.title, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    @objc func buttonAction() {
            let postViewController = PostViewController()
            self.navigationController?.pushViewController(postViewController, animated: true)
            postViewController.title = post.title
       }
    
}
