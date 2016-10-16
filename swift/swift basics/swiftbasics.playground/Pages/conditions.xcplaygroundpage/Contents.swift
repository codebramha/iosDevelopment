//If statements

var temperature = 14
if temperature < 12{
    print("Its below 12")
} else if temperature < 18{
    
    print("Its getting chilly, i recommend wearing a light sweater.")

} else {
    print("A T-shirt is fine today.")
}

//logical values are done by bool values in swift


if temperature > 7 && temperature < 12 {
    print("Might want to wear scarf with that jacket.")
}


var results: [Int] = []

for n in 1...100 {
    // Enter your code below
    if (n % 2 != 0 && n % 7 == 0){
        
        results.append(n)
   
    }
    // End code
}


//-switch statements
let airportCodes = ["LGA", "LHR", "CDG", "HKG", "DXB"]


for airportCode in airportCodes {
    
    switch airportCode {
        
    case "LGA" : print("New York, La Gaurdia")
    case "LHR" : print("London")
    case "CDG" : print("Paris")
    case "HKG" : print("Hongkong")
    default: print("I dont know which airport is this keyword")
        
        
    }
}
//essentially case takes the value in airport and does the equality operation and executes if its true.
