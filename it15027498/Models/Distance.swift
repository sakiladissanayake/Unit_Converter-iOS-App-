//
//  Distance.swift
//  it15027498
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class Distance {
    var distance: Double
    
    init(_ distance: Double) {
        self.distance = distance
    }
    
    //Function for convert metre to othe distance
    func convertMetreToFoot() -> Double {
        return distance * 3.28084
    }
    
    func convertMetreToYard() -> Double {
        return distance * 1.09361
    }
    
    func convertMetreToKilometre() -> Double {
        return distance *  0.001
    }
    
    func convertMetreToMile() -> Double {
        return distance * 0.000621371
    }
    
    //Functions for convert Foot to other distance
    func convertFootToMetre() -> Double {
        return distance * 0.3048
    }
    
    func convertFootToYard() -> Double {
        return distance * 0.333333
    }
    
    func convertFootToKilometre() -> Double {
        return distance * 0.0003048
    }
    
    func convertFootToMile() -> Double {
        return distance * 0.000189394
    }
    
    //Functions for convert Yard to other distance
    func convertYardToMetre() -> Double {
        return distance * 0.9144
    }
    
    func convertYardToFoot() -> Double {
        return distance * 3
    }
    
    func convertYardToKilometre() -> Double {
        return distance * 0.0009144
    }
    
    func convertYardToMile() -> Double {
        return distance * 0.000568182
    }
    
    //Functions for convert kilometre to other distance
    func convertKilometreToMetre() -> Double {
        return distance * 1000
    }
    
    func convertKilometreToFoot() -> Double {
        return distance * 3280.84
    }
    
    func convertKilometreToYard() -> Double {
        return distance * 1093.61
    }
    
    func convertKilometreToMile() -> Double {
        return distance * 0.621371
    }
    
    //Functions for convert mile to other distance
    func convrtMileToMetre() -> Double {
        return distance * 1609.34
    }
    
    func convrtMileToFoot() -> Double {
        return distance * 5280
    }
    
    func convrtMileToYard() -> Double {
        return distance * 1760
    }
    
    func convrtMileToKilometre() -> Double {
        return distance * 1.60934
    }
}
