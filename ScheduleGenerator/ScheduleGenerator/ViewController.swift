//
//  ViewController.swift
//  ScheduleGenerator
//
//  Created by jayjay venegas on 10/23/19.
//  Copyright © 2019 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    var curDayType = "A"
    var curWeekday = "Monday"
    var curSchedule = "Regular"
    
    let dayTypes:[String]=["A","B","C"]
    let weekdays:[String]=[ "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    let schedule:[String]=["Regular", "Double Period", "Assembly"]
    
    let mySchedule:[String:String] = [
        "A":"Design and Engineering",
        "B":"Computer Science",
        "C":"English",
        "D": "US History",
        "E":"Trigonometry",
        "F":"Spanish",
        "G": "Free",
        "H": "Free"
    ]
    
    let myMonSchedule:[String:String] = [
        "A":"Design and Engineering",
        "B":"Computer Science",
        "C":"English",
        "D": "US History",
        "E":"Trigonometry",
        "F":"Spanish",
        "G": "LifeSkills",
        "H": "LifeSkills"
    
    ]
  
    let reg_A_Sched = ["A","B","D","E","G","H"]
    let reg_C_Sched = ["C","A","F","D","I","G"]
    let reg_B_Sched = ["B","C","E","F","H","I"]
    

    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var generatedschedule: UILabel!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return dayTypes.count
        }
        else if component == 1 {
            return weekdays.count
        } else {
            return schedule.count
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return dayTypes[row]
        }
        else if component == 1{
            return weekdays[row]
        } else {
            return schedule[row]
        }
    }

  
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            curDayType = dayTypes[row]
        }
        else if component == 1{
            curWeekday = weekdays[row]
        } else {
            curSchedule = schedule[row]
        }
    }
    
    
 
    



    @IBAction func Generate(_ sender: Any) {
        let dayTypeRow = pickerView.selectedRow(inComponent:    0)
        let ACBDay = dayTypes[dayTypeRow]
        
        let weekDayRow = pickerView.selectedRow(inComponent: 1)
        
        let weekDay = weekdays[weekDayRow]
        
        let dayName = weekdays[pickerView.selectedRow(inComponent: 1)]
        
        let periodRotation:[String:[String]] = [
            "A":["A","B","D","E","G","H"],
            "B":["C","A","F","D","I","G"],
            "C":["B","C","E","F","H","I"]
    ]
        
        let MondayPeriodRotation:[String: [String]] = [
            "A":["A","B","D","E","Monday","Monday"],
            "B":["C","A","F","D","Monday","Monday"],
            "C":["B","C","E","F","Monday","Monday"]
        ]
        if dayName == "Monday"{
            let mySched = getScheduleForDay(periods: MondayPeriodRotation[ACBDay]!, mySchedule: mySchedule)
        } else {
        let mySched = getScheduleForDay(periods: periodRotation[ACBDay]!, mySchedule:mySchedule)
        generatedschedule.text = mySched
        }
    }
            
     func getScheduleForDay(periods:[String],
            mySchedule:[String:String]) -> String{
            var output = ""
            for period in periods{
                output += "\(period) - "
                output += mySchedule[period] ?? "free period"
                output += "\n"
                
            }
            return output
        }
    }





