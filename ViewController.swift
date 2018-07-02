//
//  ViewController.swift
//  Home
//
//  Created by vdy on 2018-06-29.
//  Copyright © 2018 Meal Mules. All rights reserved.
//

import UIKit


var today = Number()
var yesterday = Number(day_before: true)
var tomorrow = Number(day_after: true)


class ViewController: UIViewController {
    

    @IBOutlet weak var kcalsLeft: UILabel!
    @IBOutlet weak var breakfastRecommend: UILabel!
    @IBOutlet weak var lunchRecommend: UILabel!
    @IBOutlet weak var dinnerRecommend: UILabel!
    
    @IBOutlet weak var todayButton: UIButton!
    @IBOutlet weak var tomorrowButton: UIButton!
    @IBOutlet weak var yesterdayButton: UIButton!
    
    var testMeal = Meal(name: "test")
    
    //This function takes in an Int and outputs a String.
    //Turns the number of calories into a displayable string for the app
    private func recommendedCalories(calories: Int) -> String {
        
        let ret: String = "Recommend: " + String(calories) + " Kcals";
        return ret;
        
    }
    
    
    //Prints the numbers for the day
    //It will print Kcals, breakfast recommended calories
    //lunch recommended calories, and dinner recommended calories
    private func printNumbers(kCalories: Int, bCalories: Int, lCalories: Int, dCalories: Int) {
    
        //Number of calories left in the day.
        //Center the text and set it to a number
        //Default number is 0
        kcalsLeft.textAlignment = .center;
        kcalsLeft.text = String(kCalories);
    
        //Number of calories recommended for today's breakfast in the day.
        //set it to a number
        //Default number is 0, units is Kcals
        breakfastRecommend.text = recommendedCalories(calories: bCalories);
    
        //Number of calories recommended for today's lunch in the day.
        //set it to a number
        //Default number is 0, units is Kcals
        lunchRecommend.text = recommendedCalories(calories: lCalories);
    
        //Number of calories recommended for today's dinner in the day.
        //set it to a number
        //Default number is 0, units is Kcals
        dinnerRecommend.text = recommendedCalories(calories: dCalories);
    
    }
    
    
   
    
    
    //This function will set all the numbers to the current day's recommendations
    //Kcals left will be changed
    //Breakfast recommendation calories will be changed
    //Lunch recommendation calories will be changed
    //Dinner recommendation calories will be changed
    private func getToday(){
        
        today.kCals = 50
        today.bCals = 810
        today.lCals = 803
        today.dCals = 1598
        
    }
    
    //This function will set all the numbers to the yesterday's recommendations
    //Kcals left will be changed
    //Breakfast recommendation calories will be changed
    //Lunch recommendation calories will be changed
    //Dinner recommendation calories will be changed
    private func getYesterday(){
        
        yesterday.kCals = 4256
        yesterday.bCals = 216
        yesterday.lCals = 997
        yesterday.dCals = 216
        
    }
    
    //This function will set all the numbers to the tomorrow's recommendations
    //Kcals left will be changed
    //Breakfast recommendation calories will be changed
    //Lunch recommendation calories will be changed
    //Dinner recommendation calories will be changed
    private func getTomorrow(){
        
        tomorrow.kCals = 526
        tomorrow.bCals = 125
        tomorrow.lCals = 168
        tomorrow.dCals = 732
        
    }
    
    
    //This function will direct the user to today.
    //The new page will be the same as today except with different numbers
    //Different progress, and Kcals left/recommended.
    //The page will have the same numbers when the user leaves the page and comes back
    //The page does not have to be new, it can be the same page with different numbers
    //so every time this button is pressed, it will just display different numbers
    @IBAction func dayNow(_ sender: Any) {
        
        todayButton.setTitleColor(.blue, for: .normal)
        yesterdayButton.setTitleColor(.gray, for: .normal)
        tomorrowButton.setTitleColor(.gray, for: .normal)
        
 
        
        printNumbers(kCalories: today.kCals, bCalories: today.bCals, lCalories: today.lCals, dCalories: today.dCals)

    }
    
    //This function will direct the user to the day before today.
    //The new page will be the same as today except with different numbers
    //Different progress, and Kcals left/recommended.
    //The page will have the same numbers when the user leaves the page and comes back
    //The page does not have to be new, it can be the same page with different numbers
    //so every time this button is pressed, it will just display different numbers
    @IBAction func dayBefore(_ sender: Any){
        
        todayButton.setTitleColor(.gray, for: .normal)
        yesterdayButton.setTitleColor(.blue, for: .normal)
        tomorrowButton.setTitleColor(.gray, for: .normal)
        
        printNumbers(kCalories: yesterday.kCals, bCalories: yesterday.bCals, lCalories: yesterday.lCals, dCalories: yesterday.dCals)
    }
    
    //This function will direct the user to the day after today.
    //The new page will be the same as today except with different numbers
    //Different progress, and Kcals left/recommended.
    //The page will have the same numbers when the user leaves the page and comes back
    //The page does not have to be new, it can be the same page with different numbers
    //so every time this button is pressed, it will just display different numbers
    @IBAction func dayAfter(_ sender: Any){
        
        todayButton.setTitleColor(.gray, for: .normal)
        yesterdayButton.setTitleColor(.gray, for: .normal)
        tomorrowButton.setTitleColor(.blue, for: .normal)
        
        printNumbers(kCalories: tomorrow.kCals, bCalories: tomorrow.bCals, lCalories: tomorrow.lCals, dCalories: tomorrow.dCals)
    }
    

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationController?.isNavigationBarHidden = true
        todayButton.setTitleColor(.blue, for: .normal)
        
        getToday()
        getYesterday()
        getTomorrow()
        
        printNumbers(kCalories: today.kCals, bCalories: today.bCals, lCalories: today.lCals, dCalories: today.dCals)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //When button is clicked to direct to new view, that view depends on which button you tap (for same view)
    //This function passes data from current view to navigation bar to the actual next view.
    //Add breakfast button changes title to Breakfasts
    //Add lunch button changes title to Lunches
    //Add dinner button changes title to Dinners
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        //Breakfast button is pressed
        if segue.identifier == "addBreakfast"{
            
            //connect to table view
            let dest = segue.destination as! MealTableViewController
            
            //Dest is the Meal table view. Change properties below
            dest.title = "Breakfasts"
            
        }
        //Lunch button is pressed
        else if segue.identifier == "addLunch"{
            
            //connect to table view
            let dest = segue.destination as! MealTableViewController
            
            //Dest is the Meal table view. Change properties below
            dest.title = "Lunches"
            
        }
        //Dinner button is pressed
        else if segue.identifier == "addDinner"{
            
            //connect to table view
            let dest = segue.destination as! MealTableViewController
            
            //Dest is the Meal table view. Change properties below
            dest.title = "Dinners"
            
        }

        
        
    }
    

    
    
}

