//
//  WeightViewController.swift
//  it15027498
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    @IBOutlet weak var txtGram: UITextField!
    @IBOutlet weak var txtKilogram: UITextField!
    @IBOutlet weak var txtPound: UITextField!
    @IBOutlet weak var txtOunce: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //Convert grams to other weights
    @IBAction func txtGramValueChange(_ sender: Any) {
        let weightInGrams:Weight = Weight(Double(self.txtGram.text!) ?? 0)
        
        self.txtKilogram.text = String(weightInGrams.convertGramToKilogram())
        self.txtPound.text = String(weightInGrams.convertGramToPound())
        self.txtOunce.text = String(weightInGrams.convertGramToOunce())
    }
    
    //Convert kilograms to other weights
    @IBAction func txtKilogramValueChange(_ sender: Any) {
        let weightInKilograms:Weight = Weight(Double(self.txtKilogram.text!) ?? 0)
        
        self.txtGram.text = String(weightInKilograms.convertKilogramToGram())
        self.txtPound.text = String(weightInKilograms.convertKilogramToPound())
        self.txtOunce.text = String(weightInKilograms.convertKilogramToOunce())
    }
    
    //Convert pounds to other weights
    @IBAction func txtPoundValueChange(_ sender: Any) {
        let weightInPounds:Weight = Weight(Double(self.txtPound.text!) ?? 0)
        
        self.txtGram.text = String(weightInPounds.convertPoundsToGram())
        self.txtKilogram.text = String(weightInPounds.convertPoundsToKilogram())
        self.txtOunce.text = String(weightInPounds.convertPoundsToOunce())
    }
    
    //Convert ounces to other weights
    @IBAction func txtOunceValueChange(_ sender: Any) {
        let weightInOunces:Weight = Weight(Double(self.txtOunce.text!) ?? 0)
        
        self.txtGram.text = String(weightInOunces.convertOunceToGram())
        self.txtKilogram.text = String(weightInOunces.convertOunceToKilogram())
        self.txtPound.text = String(weightInOunces.convertOunceToPounds())
    }
    
    //Call clearFields function in each and every text field in the begin
    @IBAction func txtGramValueClear(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func txtKilogramValueClear(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func txtPoundValueClear(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func txtOunceValueClear(_ sender: Any) {
        clearFields()
    }
    
    //Hide the keypad
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    //Function for clear all text fields
    func clearFields() {
        txtGram.text = ""
        txtKilogram.text = ""
        txtPound.text = ""
        txtOunce.text = ""
    }
}
