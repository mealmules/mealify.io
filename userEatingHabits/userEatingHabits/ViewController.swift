//
//  SecondViewController.swift
//  userEatingHabits
//
//  Created by John Zheng on 2018-06-25.
//  Copyright © 2018 John Zheng. All rights reserved.
//

import UIKit

class userInfo{                 //user class
    var gender = ""
    var age = 0
    var height = 0
    var weight = 0
    var specialDiet = "none"
    var weightBalance = "remain weight"

}

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var oldness: UITextField!        //text field
    
    @IBAction func userOldness(_ sender: UITextField) {
        let ageInt = Int(oldness.text!)
    }
    
    
    
    @IBAction func older(_ sender: UIButton) {      //increase age button
        let ageInt = Int(oldness.text!)
        if(ageInt != 101){
            oldness.text = String(ageInt! + 1)
        }
        
    }
    
    @IBAction func younger(_ sender: UIButton) {    //decrease age button
        let ageInt = Int(oldness.text!)
        if(ageInt != 0){
            oldness.text = String(ageInt! - 1)
        }
    }
    
    @IBOutlet weak var nextButton: UIButton!        //next view controller button
    @IBAction func nextButton(_ sender: UIButton) {
        nextButton.setTitleColor(UIColor .green, for: .normal)
    }
    
    @IBOutlet weak var female: UIButton!            //female button
    @IBAction func girl(_ sender: UIButton) {
        female.setTitle("female selected", for: .normal)
        female.setTitleColor(UIColor .green, for: .normal)
        if(male.currentTitleColor == .green){
            male.setTitle("Male", for: .normal);
            male.setTitleColor(UIColor .blue, for: .normal)
        }
    }
    @IBOutlet weak var male: UIButton!              //male button
    @IBAction func boy(_ sender: UIButton) {
        male.setTitle("male selected",for: .normal)
        male.setTitleColor(UIColor .green, for: .normal)
        if(female.currentTitleColor == .green){
            female.setTitle("Female", for: .normal);
            female.setTitleColor(UIColor .blue, for: .normal)
        }
    }
    @IBOutlet weak var userWeight: UITextField!
    
    @IBAction func weightSlider(_ sender: UISlider) {
        userWeight.text = String(Int(sender.value))
    }
    
    
    
    
}
