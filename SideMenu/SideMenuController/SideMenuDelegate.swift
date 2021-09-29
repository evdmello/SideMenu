//
//  SideMenuDelegate.swift
//  SideMenu
//
//  Created by Errol DMello on 29/09/21.
//

import Foundation

protocol SideMenuDelegate: AnyObject {
    func menuButtonTapped()
    func itemSelected(item: ContentViewControllerPresentation)
}
