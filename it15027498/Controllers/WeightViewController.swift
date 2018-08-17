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

        // Do any additional setup after loading the view.
    }

    @IBAction func txtGramValueChange(_ sender: Any) {
        let weight:Weight = Weight(Double(self.txtGram.text!) ?? 0)
        
        self.txtKilogram.text = String(weight.convertGramTokilogram())
    }
    
    @IBAction func txtKilogramValueChange(_ sender: Any) {
    }
    
    @IBAction func txtGramValueClear(_ sender: Any) {
        clearFields()
    }
    
    //function for clear all text fields
    func clearFields(){
        txtGram.text = ""
        txtKilogram.text = ""
        txtPound.text = ""
        txtOunce.text = ""
    }
}
