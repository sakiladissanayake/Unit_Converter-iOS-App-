//
//  Speed.swift
//  it15027498
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class Speed {
    var speed: Double
    
    init(_ speed: Double) {
        self.speed = speed
    }
    
    //Functions for convert metre per second to other speed
    func convertMetrePerSecondToFeetPerMinute() -> Double {
        return speed * 196.85
    }
    
    func convertMetrePerSecondToKilometrePerHour() -> Double {
        return speed * 3.6
    }
    
    func convertMetrePerSecondToMilesPerHour() -> Double {
        return speed * 2.23694
    }
    
    //Functions for convert feet per second to other speed
    func convertFeetPerMinuteToMetrePerSec() -> Double {
        return speed * 0.00508
    }
    
    func convertFeetPerMinuteToKilometrePerHour() -> Double {
        return speed * 0.018288
    }
    
    func convertFeetPerMinuteToMilesPerHour() -> Double {
        return speed * 0.0113636
    }
    
    //Functions for convert kilometre per hour to other speed
    func convertKilometrePerHourToMetrePerSec() -> Double {
        return speed * 0.277778
    }
    
    func convertKilometrePerHourToFeetPerMinute() -> Double {
        return speed * 54.6807
    }
    
    func convertKilometrePerHourToMilesPerHour() -> Double {
        return speed * 0.621371
    }
    
    //Functions for convert miles per hour to other speed
    func convertMilesPerHourToMetrePerSec() -> Double {
        return speed * 0.44704
    }
    
    func convertMilesPerHourToFeetPerMinute() -> Double {
        return speed * 88
    }
    
    func convertMilesPerHourToKilometrePerHour() -> Double {
        return speed * 1.60934
    }
}
