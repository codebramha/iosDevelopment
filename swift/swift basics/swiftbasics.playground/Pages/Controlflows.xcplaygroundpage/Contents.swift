var todo: [String] = [
    "Finish collections course",
    "Buy groceries",
    "respond to the email",
    "Order a book online",
    "Mow Lawn"
]

for task in todo {
    print(task)
}

///closed range operator

for number in 1...10{
    
    print("\(number) times 5 equal to \(number * 5)")
    
}

var results: [Int] = []
for number in 1...10{
    
    let multiplier = number;
    var multiple = 6 * multiplier;
    var resultsArray: [Int] = []
    resultsArray.append(multiple)
    print(multiple)
}


//while loop

var index = 0
while index < todo.count{
    print(todo[index])
    index+=1
    
}

var counter = 1

while counter < 1{
    print ("Iam inside the while loop")
    counter+=1
}

repeat {
    print ("Iam  inside the repeat loop")
    counter+=1
}while counter < 1

