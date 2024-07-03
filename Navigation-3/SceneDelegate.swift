//
//  SceneDelegate.swift
//  Navigation-3
//
//  Created by mishotka on 19.06.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        
        let feedViewController = FeedViewController()
        feedViewController.title = "News"
        feedViewController.view.backgroundColor = .white
        
        
        let profileViewController = ProfileViewController()
        profileViewController.title = "Profile"
        profileViewController.view.backgroundColor = .white

        let tabBarController = UITabBarController()

        feedViewController.tabBarItem = UITabBarItem(title: "News", image: .news, tag: 0)
        profileViewController.tabBarItem = UITabBarItem(title: "Profile", image: .profil, tag: 1)

        let controllers = [feedViewController, profileViewController]
        tabBarController.viewControllers = controllers.map { UINavigationController(rootViewController: $0) }
        tabBarController.selectedIndex = 1
        
        window?.rootViewController = tabBarController
        window?.backgroundColor = .red
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

