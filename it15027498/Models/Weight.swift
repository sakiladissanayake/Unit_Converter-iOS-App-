//
//  Weight.swift
//  it15027498
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class Weight{
    var weight: Double
    
    init(_ weight: Double) {
        self.weight = weight
    }
    
    //Functions for convert gram to other weights
    func convertGramToKilogram() -> Double {
        return weight*0.001
    }
    
    func convertGramToPound() -> Double {
        return weight*0.00220462
    }
    
    func convertGramToOunce() -> Double {
        return weight*0.035274
    }
    
    
    //Functions for convert kilogram to other weights
    func convertKilogramToGram() -> Double {
        return weight*1000
    }
    
    func convertKilogramToPound() -> Double {
        return weight*2.20462
    }
    
    func convertKilogramToOunce() -> Double {
        return weight*35.274
    }
    
    
    //Functions for convert pounds to other weights
    func convertPoundsToGram() -> Double {
        return weight*453.592
    }
    
    func convertPoundsToKilogram() -> Double {
        return weight*0.453592
    }
    
    func convertPoundsToOunce() -> Double {
        return weight*16
    }
    
    
    //Functions for convert ounce to other weights
    func convertOunceToGram() -> Double {
        return weight*28.3495
    }
    
    func convertOunceToKilogram() -> Double {
        return weight*0.0283495
    }
    
    func convertOunceToPounds() -> Double {
        return weight*0.0625
    }
}
