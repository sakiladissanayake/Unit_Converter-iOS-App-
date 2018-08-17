//
//  Temperature.swift
//  it15027498
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class Temperature{
    var temperature: Double
    
    init(_ temperature: Double) {
        self.temperature = temperature
    }
    
    //Functions for convert celsius to other temperatures
    func convertCelsiusToFahrenheit() -> Double {
        return ((temperature * 1.8) + 32)
    }
    
    func convertCelsiusToKelvin() -> Double {
        return temperature + 273.15
    }
    
    //Functions for convert fahrenheit to other temperatures
    func convertFahrenheitToCelsius() -> Double {
        return ((temperature - 32) * 0.5556)
    }
    
    func convertFahrenheitToKelvin() -> Double {
        return ((temperature + 459.67)*(5/9))
    }
    
    //Functions for convert kelvin to other temperatures
    func convertKelvinToCelsius() -> Double {
        return temperature - 273.15
    }
    
    func convertKelvinToFahrenheit() -> Double {
        return ((temperature * (9/5)) - 459.67)
    }
}

