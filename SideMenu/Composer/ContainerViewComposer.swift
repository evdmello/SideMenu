//
//  ContainerViewComposer.swift
//  SideMenu
//
//  Created by Errol DMello on 29/09/21.
//

import UIKit

final class ContainerViewComposer {
    static func makeContainer() -> ContainerViewController {
        let homeViewController = HomeViewController()
        let settingsViewController = SettingsViewController()
        let aboutViewController = AboutViewController()
        let myAccountViewController = MyAccountViewController()
        let sideMenuItems = [
            SideMenuItem(icon: UIImage(systemName: "house.fill"),
                         name: "Home",
                         viewController: .embed(homeViewController)),
            SideMenuItem(icon: UIImage(systemName: "gear"),
                         name: "Settings",
                         viewController: .embed(settingsViewController)),
            SideMenuItem(icon: UIImage(systemName: "info.circle"),
                         name: "About",
                         viewController: .push(aboutViewController)),
            SideMenuItem(icon: UIImage(systemName: "person"),
                         name: "My Account",
                         viewController: .modal(myAccountViewController))
        ]
        let sideMenuViewController = SideMenuViewController(sideMenuItems: sideMenuItems)
        let container = ContainerViewController(sideMenuViewController: sideMenuViewController,
                                                rootViewController: homeViewController)

        return container
    }
}
