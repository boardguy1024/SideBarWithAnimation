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
    @IBOutlet weak var profileImageView: UIImageViewX!
    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet weak var fileButton: UIButton!
    @IBOutlet weak var shoppingButton: UIStackView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    
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
        UIView.animate(withDuration: 0.3) {
            self.screenCoverButton.alpha = 0.8
            self.sideBarView.alpha = 1
        }
        UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseIn, .allowUserInteraction], animations: {
            self.playButton.transform = CGAffineTransform.identity
            self.menuCurveImageView.transform = CGAffineTransform.identity
        })
        UIView.animate(withDuration: 0.3, delay: 0.1, options: [.curveEaseIn, .allowUserInteraction], animations: {
            self.searchButton.transform = CGAffineTransform.identity
            self.fileButton.transform = CGAffineTransform.identity
        })
        UIView.animate(withDuration: 0.3, delay: 0.2, options: [.curveEaseIn, .allowUserInteraction], animations: {
            self.cameraButton.transform = CGAffineTransform.identity
            self.shoppingButton.transform = CGAffineTransform.identity
        })
        UIView.animate(withDuration: 0.3, delay: 0.3, options: [.curveEaseIn, .allowUserInteraction], animations: {
            self.profileImageView.transform = CGAffineTransform.identity
            self.settingButton.transform = CGAffineTransform.identity
        })
        
    }
    func hideMenu() {
       
        UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseOut, .allowUserInteraction], animations: {
            self.screenCoverButton.alpha = 0
            self.profileImageView.transform = CGAffineTransform(translationX: -self.sideBarView.frame.width, y: 0)
            self.settingButton.transform = CGAffineTransform(translationX: -self.sideBarView.frame.width, y: 0)
        })
        UIView.animate(withDuration: 0.3, delay: 0.1, options: [.curveEaseOut, .allowUserInteraction], animations: {
            self.cameraButton.transform = CGAffineTransform(translationX: -self.sideBarView.frame.width, y: 0)
            self.shoppingButton.transform = CGAffineTransform(translationX: -self.sideBarView.frame.width, y: 0)
        })
        UIView.animate(withDuration: 0.3, delay: 0.2, options: [.curveEaseOut, .allowUserInteraction], animations: {
            self.fileButton.transform = CGAffineTransform(translationX: -self.sideBarView.frame.width, y: 0)
            self.searchButton.transform = CGAffineTransform(translationX: -self.sideBarView.frame.width, y: 0)
        })
        UIView.animate(withDuration: 0.4, delay: 0.3, options: [.curveEaseOut, .allowUserInteraction], animations: {
            self.fileButton.transform = CGAffineTransform(translationX: -self.sideBarView.frame.width, y: 0)
            self.searchButton.transform = CGAffineTransform(translationX: -self.sideBarView.frame.width, y: 0)
            self.sideBarView.alpha = 0

        })
        UIView.animate(withDuration: 0.3, delay: 0.4, options: [.curveEaseOut, .allowUserInteraction], animations: {
            self.playButton.transform = CGAffineTransform(translationX: -self.sideBarView.frame.width, y: 0)
            //隠す時はwidth分マイナス方向に配置しておく
            self.menuCurveImageView.transform = CGAffineTransform(translationX: -self.menuCurveImageView.frame.width, y: 0)
        })
        
        
        

        
    }
    
    
}

