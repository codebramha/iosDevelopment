//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let week = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]


enum Day {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
    }

func weekdayOrWeekend(day: Day) -> DayType {
    
    switch day {
    case .Saturday,.Sunday: return .Weekend
    default: return .Weekday
        
    }
    
}
enum DayType {
    
    case Weekday
    case Weekend
}

func muteNotifications(dayType: DayType)-> Bool {
    
    switch dayType{
        
    case .Weekend: return true
    case .Weekday: return false
        
    }
    
}


let dayType = weekdayOrWeekend(day: .Saturday)



enum ColorComponents {
    
    case RGB(red: CGFloat, green: CGFloat, blue: CGFloat,alpha:  CGFloat)
    case HSB(CGFloat, CGFloat, CGFloat, CGFloat)
    
    
    func color() -> UIColor {
    
        switch self {
            
        case .RGB(let redValue, let greenValue, let blueValue, let alphaValue):
            return UIColor(red: redValue/255.0, green: greenValue/255.0, blue: blueValue/255.0, alpha: alphaValue)
        case .HSB(let hueValue, let saturationValue, let brightnessValue, let alphaValue):
            return UIColor(hue: hueValue/360.0, saturation: saturationValue/100.0, brightness: brightnessValue/100.0, alpha: alphaValue)
            
        }
    }
   
}

ColorComponents.RGB(red: 120.0,green: 80.0,blue: 137.0,alpha: 1.0).color()