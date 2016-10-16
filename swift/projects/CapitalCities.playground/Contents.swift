//: Playground - noun: a place where people can play

import UIKit

var europeanCapitals: [String] = []
var asianCapitals: [String] = []
var otherCapitals: [String] = []

let world = [
    "BEL": "Brussels",
    "LIE": "Vaduz",
    "BGR": "Sofia",
    "USA": "Washington D.C.",
    "MEX": "Mexico City",
    "BRA": "Brasilia",
    "IND": "New Delhi",
    "VNM": "Hanoi"]

for (key, value) in world {
    // Enter your code below
    
    switch (key) {
    case "BEL", "LIE", "BGR" :
        
        europeanCapitals.append(value)
        
        break
        
    case "IND", "VNM" :
        
        asianCapitals.append(value)
        
        break
        
    default :
        
        otherCapitals.append(value)
        
        break
        
    }
}

//end of code
