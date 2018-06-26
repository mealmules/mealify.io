//
//  ViewController.swift
//  userEatingHabits
//
//  Created by John Zheng on 2018-06-25.
//  Copyright © 2018 John Zheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func FishButton(_ sender: UIButton) {
        print("Fish chosen")
    }
    
    @IBAction func PorkButton(_ sender: UIButton) {
        print("Pork chosen")
    }
    
    @IBAction func BeefButton(_ sender: UIButton) {
        print("Beef chosen");
    }
    
    @IBAction func ChickenButton(_ sender: UIButton) {
        print("Chicken chosen")
    }
}

