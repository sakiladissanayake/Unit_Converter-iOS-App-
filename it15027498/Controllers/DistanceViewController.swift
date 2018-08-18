//
//  DistanceViewController.swift
//  it15027498
//
//  Created by SE on 8/18/18.
//  Copyright © 2018 SE. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {
    @IBOutlet weak var txtMetre: UITextField!
    @IBOutlet weak var txtFoot: UITextField!
    @IBOutlet weak var txtYard: UITextField!
    @IBOutlet weak var txtKilometre: UITextField!
    @IBOutlet weak var txtMile: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //Convert metre to other distance
    @IBAction func txtMetreValueChange(_ sender: Any) {
        let distanceInMetre:Distance = Distance(Double(txtMetre.text!) ?? 0)
        
        txtFoot.text = String(distanceInMetre.convertMetreToFoot())
        txtYard.text = String(distanceInMetre.convertMetreToYard())
        txtKilometre.text = String(distanceInMetre.convertMetreToKilometre())
        txtMile.text = String(distanceInMetre.convertMetreToMile())
    }
    
    //Convert foot to other distance
    @IBAction func txtFootValueChange(_ sender: Any) {
        let distanceInFoot: Distance = Distance(Double(txtFoot.text!) ?? 0)
        
        txtMetre.text = String(distanceInFoot.convertFootToMetre())
        txtYard.text = String(distanceInFoot.convertFootToYard())
        txtKilometre.text = String(distanceInFoot.convertFootToKilometre())
        txtMile.text = String(distanceInFoot.convertFootToMile())
    }
    
    //Convert yard to other distance
    @IBAction func txtYardValueChange(_ sender: Any) {
        let distanceInYard:Distance = Distance(Double(txtYard.text!) ?? 0)
        
        txtMetre.text = String(distanceInYard.convertYardToMetre())
        txtFoot.text = String(distanceInYard.convertYardToFoot())
        txtKilometre.text = String(distanceInYard.convertYardToKilometre())
        txtMile.text = String(distanceInYard.convertYardToMile())
    }
    
    //Convert kilometre to other distance
    @IBAction func txtKilometreValueChange(_ sender: Any) {
        let distanceInKilometre:Distance = Distance(Double(txtKilometre.text!) ?? 0)
        
        txtMetre.text = String(distanceInKilometre.convertKilometreToMetre())
        txtFoot.text = String(distanceInKilometre.convertKilometreToFoot())
        txtYard.text = String(distanceInKilometre.convertKilometreToYard())
        txtMile.text = String(distanceInKilometre.convertKilometreToMile())
    }
    
    //Convert mile to other distance
    @IBAction func txtMileValueChange(_ sender: Any) {
        let distanceInMile:Distance = Distance(Double(txtMile.text!) ?? 0)
        
        txtMetre.text = String(distanceInMile.convertMileToMetre())
        txtFoot.text = String(distanceInMile.convertMileToFoot())
        txtYard.text = String(distanceInMile.convertMileToYard())
        txtKilometre.text = String(distanceInMile.convertMileToKilometre())
    }
}
