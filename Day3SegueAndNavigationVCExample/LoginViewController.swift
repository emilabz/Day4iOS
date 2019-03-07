//
//  ViewController.swift
//  Day3SegueAndNavigationVCExample
//
//  Created by moxDroid on 2019-03-06.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var swRememberMe: UISwitch!
    @IBOutlet weak var txtUserPassword: UITextField!
    @IBOutlet weak var txtUserEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func btnLoginClick(_ sender: Any)
    {
        let email = txtUserEmail.text
        let pwd = txtUserPassword.text
        
        if(email == "a@a.com" && pwd == "123")
        {
            print("Login Success...")
            //steps to be done
            if(swRememberMe.isOn)
            {
                var userDefault = UserDefaults.standard                       //UserDefaults is singleton class
                //store values
                userDefault.set(email, forKey: "userEmail")
                userDefault.set(pwd, forKey: "userPassword")
                //
                print("Write Code to remember/store userId/Password")
            }
            else
            {
                print("Remove UserId/Password if previously remembered/stored")
            }
            //move on to next screen
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let homeVC = sb.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
            homeVC.userEmail = email
            self.navigationController?.pushViewController(homeVC, animated: true)
            //self.present(homeVC, animated: true)
        }
        else
        {
            //Show Alert Here
            print("SHOW YOUR Alert Contoller with message User/Password Invalid")
        }
    }
}

