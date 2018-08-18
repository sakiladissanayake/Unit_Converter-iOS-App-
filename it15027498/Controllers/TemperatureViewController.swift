//
//  TemperatureViewController.swift
//  it15027498
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {

    @IBOutlet weak var txtCelsius: UITextField!
    @IBOutlet weak var txtFahrenheit: UITextField!
    @IBOutlet weak var txtKelvin: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Convert celsius to other temperatures
    @IBAction func txtCelsiusValueChange(_ sender: Any) {
        let tempInCelcius:Temperature = Temperature(Double(txtCelsius.text!) ?? 0)
        
        txtFahrenheit.text = String(tempInCelcius.convertCelsiusToFahrenheit())
        txtKelvin.text = String(tempInCelcius.convertCelsiusToKelvin())
    }
    
    //Convert fahrenheit to other temperatures
    @IBAction func txtFahrenheitValueChange(_ sender: Any) {
        let tempInFahrenheit:Temperature = Temperature(Double(txtFahrenheit.text!) ?? 0)
        
        txtCelsius.text = String(tempInFahrenheit.convertFahrenheitToCelsius())
        txtKelvin.text = String(tempInFahrenheit.convertFahrenheitToKelvin())
    }
    
    //Convert kelvin to other temperatures
    @IBAction func txtKelvinValueChange(_ sender: Any) {
        let tempInKelvin:Temperature = Temperature(Double(txtKelvin.text!) ?? 0)
        
        txtCelsius.text = String(tempInKelvin.convertKelvinToCelsius())
        txtFahrenheit.text = String(tempInKelvin.convertKelvinToFahrenheit())
    }
    
    //Call clearFields function in each and every text field in the begin
    @IBAction func txtCelsiusValueClear(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func txtFahrenheitValueClear(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func txtKelvinValueClear(_ sender: Any) {
        clearFields()
    }
 
    //Function for clear all text fields
    func clearFields() {
        txtCelsius.text = ""
        txtFahrenheit.text = ""
        txtKelvin.text = ""
        
    }
}
