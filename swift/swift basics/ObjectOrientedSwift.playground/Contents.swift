//Object oriented stuff yay

let x1 = 0
let y1 = 0
let coordinate1: (x: Int, y: Int) = (0,0)
coordinate1.x
struct Point {
    
    let x: Int
    let y: Int
    
    init(x: Int, y:Int) {
        self.x = x
        self.y = y
    }
    func surroundingPoints(withRange range:Int = 1)->[Point]
    {
        var results:[Point] = []
        for xCoord in (x-range)...(x+range)
        {
            for yCoord in(y-range)...(y+range)
            {
                let coordinatePoint = Point(x: xCoord, y: yCoord)
                results.append(coordinatePoint)
            }
        
        }
        
            return results
    }
    
    
}


let p1 = Point(x: 0, y: 2)
p1.surroundingPoints()


class Enemy {
    
    var life: Int = 2
    var position: Point
    
    init(x: Int, y: Int){
        self.position = Point(x: x, y: y)
        
        
    }
    
    func decreaseHealth(factor: Int)
    {
        
        life -= factor
    }
    
}

class Tower {
    
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
        
        func fireAtEnemy(){
            
        }
        
    }
    
    
    
    
}
