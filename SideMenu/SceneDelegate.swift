//
//  SceneDelegate.swift
//  SideMenu
//
//  Created by Errol DMello on 29/09/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let container = ContainerViewComposer.makeContainer()
        window?.rootViewController = container
        window?.makeKeyAndVisible()
    }
}

