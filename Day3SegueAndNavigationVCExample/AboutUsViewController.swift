//
//  AboutUsViewController.swift
//  Day3SegueAndNavigationVCExample
//
//  Created by moxDroid on 2019-03-06.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    var x:Int?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let i = x
        {
            print(i)
        }
    }
    
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var lblSlider: UILabel!
    @IBOutlet weak var lblStepper: UILabel!
    @IBOutlet weak var imgType: UIImageView!
    @IBOutlet weak var lblType: UILabel!
    @IBAction func segChange(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
        switch sender.selectedSegmentIndex {
        case 0:
            lblType.text="Stance"
            imgType.image=UIImage(named: "STi_Stance.jpeg")
        case 1:
            lblType.text="Tuner"
            imgType.image=UIImage(named: "sti_tuner.jpeg")
        case 2:
            lblType.text="Time Attack"
            imgType.image=UIImage(named: "sti_time_attack.jpg")
        default:
            print("Enter valid choice")
        }
    
    }
    
    @IBAction func stepper(_ sender: UIStepper) {
        lblStepper.text="\(sender.value)"
    }
    
    @IBAction func slider(_ sender: UISlider) {
        lblSlider.text="\(Int(sender.value))"
        progressbar.progress=sender.value/100
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
