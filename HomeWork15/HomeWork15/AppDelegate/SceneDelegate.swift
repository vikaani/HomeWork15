//
//  SceneDelegate.swift
//  HomeWork15
//
//  Created by Vika on 11.04.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: windowScene)
        
        openAuthScreen()
    }
    
    private func openAuthScreen() {
        let authCoordinator = AuthCoordinator(navigationController: UINavigationController(), onFinish: openMainScreen)
        window?.rootViewController = authCoordinator.rootViewController
        authCoordinator.start()
        window?.makeKeyAndVisible()
    }
    
    private func openMainScreen() {
        let callCoordinator = CallCoordinator(navigationController: UINavigationController())
        let messageCoordinator = MessageCoordinator(navigationController: UINavigationController())
        let favoriteCoordinator = FavoriteCoordinator(navigationController: UINavigationController())
        
        let callTabModel = TabBarModel(
            image: .callImage,
            title: "Call",
            viewController: callCoordinator.rootViewController
        )
        
        let messsageTabModel = TabBarModel(
            image: .messageImage,
            title: "Message",
            viewController: messageCoordinator.rootViewController
        )
        
        let favoriteTabModel = TabBarModel(
            image: .starImage,
            title: "Favorite",
            viewController: favoriteCoordinator.rootViewController
        )
        
        let tabBarController = MainTabBarController(models: [
            callTabModel,
            messsageTabModel,
            favoriteTabModel
        ])
        
        window?.rootViewController = tabBarController
        
        callCoordinator.start()
        messageCoordinator.start()
        favoriteCoordinator.start()
    }
}
