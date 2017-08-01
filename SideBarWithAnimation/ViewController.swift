//
//  ViewController.swift
//  SideBarWithAnimation
//
//  Created by park kyung suk on 2017/08/01.
//  Copyright © 2017年 park kyung suk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sideBarView: UIView!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var screenCoverButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideBarView.alpha = 0
        screenCoverButton.alpha = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func menuButtonTappd(_ sender: Any) {
        hideMenu()
        
    }
    @IBAction func screenCoverButtonTapped(_ sender: Any) {
        showMenu()
    }
    
    func showMenu() {
        UIView.animate(withDuration: 0.5) {
            self.screenCoverButton.alpha = 0
            self.sideBarView.alpha = 0
        }
    }
    func hideMenu() {
        UIView.animate(withDuration: 0.5) {
            self.screenCoverButton.alpha = 0.8
            self.sideBarView.alpha = 1
        }
    }
    
    
}

