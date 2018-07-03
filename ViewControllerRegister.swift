//
//  ViewControllerRegister.swift
//  mealify
//
//  Created by John Zheng on 2018-07-02.
//  Copyright © 2018 Meal Mules. All rights reserved.
//

import UIKit
import Firebase

class ViewControllerRegister: UIViewController {

    @IBOutlet weak var emailtext: UITextField!
    
    @IBOutlet weak var passwordtext: UITextField!
    
    
    
    @IBAction func registerbutton(_ sender: Any) {
        if let email = emailtext.text, let pass = passwordtext.text{
            Auth.auth().createUser(withEmail: email, password: pass) { (authResult, error) in
                if let u = authResult {
                    print("its working")
                    self.performSegue(withIdentifier: "gotoqa", sender: self)
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
