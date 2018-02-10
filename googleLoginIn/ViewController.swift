//
//  ViewController.swift
//  googleLoginIn
//
//  Created by 張書涵 on 2018/2/10.
//  Copyright © 2018年 AliceChang. All rights reserved.
//


import UIKit
import GoogleSignIn

class ViewController: UIViewController,GIDSignInUIDelegate {
    @IBOutlet weak var profileImgView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBAction func login(_ sender: UIButton) {
        GIDSignIn.sharedInstance().signIn()
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signInSilently()
        //signInSilently()只要登入過一次就可以快速登入
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

