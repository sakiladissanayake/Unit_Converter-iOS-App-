//
//  SpeedViewController.swift
//  it15027498
//
//  Created by SE on 8/18/18.
//  Copyright © 2018 SE. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    @IBOutlet weak var txtMetre: UITextField!
    @IBOutlet weak var txtFeet: UITextField!
    @IBOutlet weak var txtKilometre: UITextField!
    @IBOutlet weak var txtMiles: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Convert metre per sec to other speed
    @IBAction func txtMetreValueChange(_ sender: Any) {
        let speedInMetreperSec:Speed = Speed(Double(txtMetre.text!) ?? 0)
        
        txtFeet.text = String(speedInMetreperSec.convertMetrePerSecondToFeetPerMinute())
        txtKilometre.text = String(speedInMetreperSec.convertMetrePerSecondToKilometrePerHour())
        txtMiles.text = String(speedInMetreperSec.convertMetrePerSecondToMilesPerHour())
    }
    
    //Convert feet per minute to other speed
    @IBAction func txtFeetValueChange(_ sender: Any) {
        let speedInFeetPerMinute:Speed = Speed(Double(txtFeet.text!) ?? 0)
        
        txtMetre.text = String(speedInFeetPerMinute.convertFeetPerMinuteToMetrePerSec())
        txtKilometre.text = String(speedInFeetPerMinute.convertFeetPerMinuteToKilometrePerHour())
        txtMiles.text = String(speedInFeetPerMinute.convertFeetPerMinuteToMilesPerHour())
    }
    
    //Convert kilometre per hour to other speed
    @IBAction func txtKilometreValueChange(_ sender: Any) {
        let speedInKilometrePerHour:Speed = Speed(Double(txtKilometre.text!) ?? 0)
        
        txtMetre.text = String(speedInKilometrePerHour.convertKilometrePerHourToMetrePerSec())
        txtFeet.text = String(speedInKilometrePerHour.convertKilometrePerHourToFeetPerMinute())
        txtMiles.text = String(speedInKilometrePerHour.convertKilometrePerHourToMilesPerHour())
    }
    
    //Convert miles per hour to other speed
    @IBAction func txtMilesValueChange(_ sender: Any) {
        let speedInMilesPerHour:Speed = Speed(Double(txtMiles.text!) ?? 0)
        
        txtMetre.text = String(speedInMilesPerHour.convertMilesPerHourToMetrePerSec())
        txtFeet.text = String(speedInMilesPerHour.convertMilesPerHourToFeetPerMinute())
        txtKilometre.text = String(speedInMilesPerHour.convertMilesPerHourToKilometrePerHour())
    }
    
    //Call clearFields function in each and every text field in the begin
    @IBAction func txtMetreValueClear(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func txtFeetValueClear(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func txtKilometreValueClear(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func txtMilesValueClear(_ sender: Any) {
        clearFields()
    }
    
    //Hide the keypad
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    //Function for clear all text fields
    func clearFields() {
        txtMetre.text = ""
        txtFeet.text = ""
        txtKilometre.text = ""
        txtMiles.text = ""
    }
}
