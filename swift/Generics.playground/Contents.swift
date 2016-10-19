//: Playground - noun: a place where people can play

import UIKit

struct Team {
    
    var name: String
    var city: String
    var winPCT: Double = 0.0
    init(name: String, city: String)
    {
        self.name = name
        self.city = city
    }
    
}

struct Player{
    var name: String
    var height: Double
    init(name: String, height: Double) {
        self.name = name
        self.height = height
    }
}

class StatGroup <Element>{
    
    var members : Array<Element>
    var title: String
    init(title: String, members: [Element])
    {
        self.title = title
        self.members = members
    }
}

var blazers = Team(name: "Blazers", city: "Portland")
var nuggets = Team(name: "Nuggets", city: "Denver")

var hoopsUS = StatGroup(title: "NBA WEST", members: [blazers, nuggets])
hoopsUS.members

var star = Player(name: "Pasan", height: 88)
var benchwarmer = Player(name: "Andrew", height: 67)

var iceFencingUS = StatGroup(title: "Olympic ice fencing", members: [star,benchwarmer])
iceFencingUS.members