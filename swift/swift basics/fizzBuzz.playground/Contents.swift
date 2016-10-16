
func calculateArea(length:Int, width:Int) -> Int
{
    let area = length * width
    return area
}
//room1
let areaOfroom1 = calculateArea(length: 15, width: 20)
//room2
let areaOfRoom2 = calculateArea(length: 12, width: 15)

func somefunction(){
    
    
}

func concatenateStrings(a: String, b: String)-> String {
     return a+b
}

concatenateStrings(a:"A",b:"B")
///default values

func carpetCostCalculator(length length:Int, width: Int, carpetColor: String = "tan")-> (price: Int,carpetColor: String) {

   
    let area = calculateArea(length: length, width: width)
    var price: Int
    //Gray carpet - $1/sq ft
    //tan carpet - $2/sq ft
    //Deep Blue Carpet - $4/sq ft
    switch carpetColor {
        case "gray": price = area * 1
        case "tan": price = area * 2
        case "blue": price = area * 4
    default: price = 0
        
    }
    return (price, carpetColor)
    
}

let result = carpetCostCalculator(length: 20, width: 10)
result.price
result.carpetColor

//Function Scope




// Enter your code below
func getTowerCoordinates(a: String ) -> (Double, Double){
 
    switch a {
    case "Eiffel tower": return ( 48.8582, 2.2945 )
    case "Great Pyramid": return (29.9792, 31.1344 )
    case "Sydney Opera House": return ( 33.8587, 151.2140)
    default: (0,0)
    }
    return (Double, Double)
}

getTowerCoordinates(a:"Eiffel tower")

