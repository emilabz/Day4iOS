//
//  HomeViewController.swift
//  Day3SegueAndNavigationVCExample
//
//  Created by moxDroid on 2019-03-06.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var userEmail: String?
    @IBOutlet weak var lblUserEmail: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let e = userEmail
        {
            self.lblUserEmail.text = e
        }
        //self.navigationItem.hidesBackButton = true
        //self.navigationItem.title = "I am Dyanamic Title"
        self.navigationController?.hidesBarsOnTap = true
        //self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.navigationBar.backgroundColor = UIColor.blue
        
        let vc = self.navigationController?.viewControllers[1] 
        self.navigationController?.popToViewController(vc!, animated: true)
    
        let userDefault = UserDefaults.standard
        if let email = userDefault.string(forKey: "userEmail"){
            print(email)
        }
        if let pwd = userDefault.string(forKey: "userPassword"){
            print(pwd)
        }
    }
    
    @IBAction func btnNextClick(_ sender: Any)
    {
        self.performSegue(withIdentifier: "moveToAboutUsSegue", sender: nil)
        
        //self.performSegue(withIdentifier: "moveToLoginSegue", sender: nil)
        
        
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToAboutUsSegue"
        {
            if let destinationVC = segue.destination as? AboutUsViewController {
                destinationVC.x = 1_000
            }
        }
        if segue.identifier == "moveToLoginSegue"
        {
            
        }
    }
    

}
