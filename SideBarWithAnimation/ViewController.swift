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
    @IBOutlet weak var menuCurveImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuCurveImageView.image = #imageLiteral(resourceName: "side")
        menuCurveImageView.tintColor = .yellow
        sideBarView.alpha = 0
        screenCoverButton.alpha = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func menuButtonTappd(_ sender: Any) {
        showMenu()
        
    }
    @IBAction func screenCoverButtonTapped(_ sender: Any) {
        hideMenu()
    }
    
    func showMenu() {
        UIView.animate(withDuration: 0.4) {
            self.screenCoverButton.alpha = 0.8
            self.sideBarView.alpha = 1
        }
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseIn, animations: {
            self.menuCurveImageView.transform = CGAffineTransform.identity
        })
        
    }
    func hideMenu() {
        UIView.animate(withDuration: 0.4) {
            self.screenCoverButton.alpha = 0
            self.sideBarView.alpha = 0
        }
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseOut, animations: { 
         
            //隠す時はwidth分マイナス方向に配置しておく
            self.menuCurveImageView.transform = CGAffineTransform(translationX: -self.menuCurveImageView.frame.width, y: 0)
            
        })
    }
    
    
}

