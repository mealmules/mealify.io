//
//  ViewController3.swift
//  userEatingHabits
//
//  Created by John Zheng on 2018-06-27.
//  Copyright © 2018 John Zheng. All rights reserved.
//

import UIKit
import Firebase

class ViewController3: UIViewController {

    @IBOutlet weak var emailtext: UITextField!
    
    @IBOutlet weak var passwordtext: UITextField!
    
    
    @IBAction func loginbutton(_ sender: UIButton) {
        if let email = emailtext.text, let pass = passwordtext.text{
            Auth.auth().signIn(withEmail: email, password: pass){
                (user,error) in
                if let u = user{
                    print("login successful, correct info!")
                    self.performSegue(withIdentifier: "loggedin", sender: self)
                }else{
                    print(error)
                }
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
