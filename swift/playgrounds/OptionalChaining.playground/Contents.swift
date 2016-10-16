

class Address {
    
    var streetName: String?
    var buildingNumber: String?
    var apartmentNumber: String?
    
}

class Residence{
    
    var address: Address?
}

class Person{
    
    var residence: Residence?
    
}



let susan = Person()

let address = Address()
address.streetName = "1234 Something drive"
