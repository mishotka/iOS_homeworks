//
//  ViewController.swift
//  Navigation-3
//
//  Created by mishotka on 19.06.2024.
//

import UIKit

struct Post{
    let titlePost: String
}

class FeedViewController: UIViewController {
    let button = UIButton()
    let postTitle = Post(titlePost: "My Post")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButton()
    }
    
    func configureButton(){
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        button.setTitle("Post", for: .normal)
        button.center = view.center
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(touchButton), for: .touchUpInside)
        view.addSubview(button)
        
    }
    @objc func touchButton(){
        navigationController?.pushViewController(PostViewController(title: postTitle.titlePost), animated: true)
    }
} // Class
