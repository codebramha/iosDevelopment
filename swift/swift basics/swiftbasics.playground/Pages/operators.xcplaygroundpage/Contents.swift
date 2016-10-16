// Arrays 

var todo: [String] = ["Finish collections course", "Buy groceries", "respond to the email"]
todo.append("Pick up dry cleaning.")
todo += [ "Order book online"]
let secondTaskList = ["Mow the lawn"]
let firstTask = todo[0]
let thirdTask = todo[2]
todo[4] = "Brush Tetth"
todo.insert("Pay bills", atIndex: 2)
todo.removeAtIndex(3)


/* Aight lets learn some disctionaries today */

var airportCodes:[String: String] = [
    
    "LGA": "La Gaurdia",
    "LHR": "Heathrow",
    "CDG": "Charles De Gaulle",
    "DXB": "Dubai International"
    
]

airportCodes["LGA"]

//Inserting Key value pairs

airportCodes["SYD"] = "Sydney Airport"
airportCodes.updateValue("Dublin Airport", forKey: "DUB")
airportCodes["DXB"] = nil
airportCodes.removeValueForKey("DUB")


// Dealing with non- existent data

let airportName = airportCodes["LGA"]
let orlandoAirport = airportCodes["MCO"]

//Control flow statements
//Loops :P :D

