//arrays

var todo: [String] = [
    "Finish collections course",
    "Buy groceries",
    "Respond to emails"]

todo.append("Pick up dry cleaning")

todo += ["order a book"] //mutable array

let secondTaskList = ["Mow the lawn"]

/// Reading from arrays 

let firstTask = todo[0]

let thirdTask = todo[2]

todo[3] = "brush teeth"

todo.insert("pay bills", atIndex: 2)

todo.removeAtIndex(2)
todo.count


///disctionaries//
/*
        Airport Code    Airport Name
            (Key)           (Value)
            LGA             La Gaurdia
            LHR             Heathrow
            CDG             Charles De Gualle
            HYD             Hyderabad
*/

var airportCodes: [String: String] = [
    "LGA": "La Gaurdia",
    "LHR": "Heathrow",
    "CDG": "Charles De Gaulle",
    "HKG": "Hong Kong"
]


//  Read from a dictionary

airportCodes["HKG"]

// Inserting key value pairs

airportCodes["SYD"] = "Sydney Airport"

//using case and switch control flows

import Foundation
var randomTemperature = Int (arc4random_uniform(UInt32(150)))

switch randomTemperature{
case 0..<32: print("Forget the clothes, you are basically a popsicle")
case 32..<45: print("Its quide cold, go get a jacket")
case 45..<70: print("Its lil chilly, you need gloves")
case 70..<100: print("Its quite hot, t-shirt weather yeay!")
default: print("My face is Melting!")
}