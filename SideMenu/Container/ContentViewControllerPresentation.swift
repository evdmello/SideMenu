//
//  ContentViewControllerPresentation.swift
//  SideMenu
//
//  Created by Errol DMello on 29/09/21.
//

import UIKit

enum ContentViewControllerPresentation {
    case embed(ContentViewController)
    case push(UIViewController)
    case modal(UIViewController)
}
