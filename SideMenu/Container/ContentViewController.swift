//
//  ContentViewController.swift
//  SideMenu
//
//  Created by Errol DMello on 29/09/21.
//

import UIKit

class ContentViewController: UIViewController {
    weak var delegate: SideMenuDelegate?
    var barButtonImage: UIImage? = UIImage(systemName: "line.horizontal.3")

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    private func configureView() {
        let barButtonItem = UIBarButtonItem(image: barButtonImage, style: .plain, target: self, action: #selector(menuTapped))
        barButtonItem.tintColor = .white
        navigationItem.setLeftBarButton(barButtonItem, animated: false)
    }

    @objc private func menuTapped() {
        delegate?.menuButtonTapped()
    }
}
