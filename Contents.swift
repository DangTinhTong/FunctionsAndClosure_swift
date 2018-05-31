//: Playground - noun: a place where people can play
// Tống Đăng Tình


import UIKit

//var str = "Hello, playground"
// Use func to declare a function
// Call a function by following its name with a list of arguments in parenthese
// Use -> to separate the parameter names and types from the function's return type
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}

greet(person: "Tinh", day: "Tuesday")
// Experiment
greet(person: "Tinh", day: "lunch special")

// Use tuple to make a compoud value - for example to return multiple values from a value
// The elements of a tuple can be referred to either by name or by number

func calculateStaticstiscs(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score > max {
            max = score
        }else if score < min {
            min = score
            
        }
        sum += score
    }
    return (min, max, sum)
}
let staticstics = calculateStaticstiscs(scores: [5, 3, 100, 3, 9])
print(staticstics.sum)
print(staticstics.2)

//
func returnFifteen() ->Int{
    var y = 10
    func add() {
        y += 5
        
    }
    add()
    return y
    
}
returnFifteen()

// Functions ar a fist-class type
func makeIncrementer() -> ((Int) ->Int) {
    func addOne (number: Int) ->Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

// A function can take another function as one of its arguments
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) ->Bool {
    for item in list {
        if condition(item){
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) ->Bool {
    return number < 10
    
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)
//
var numbers0 = [10, 20, 30]
hasAnyMatches(list: numbers, condition: lessThanTen)

// Functions are actually a special case of closures: Blocks of code that can be called latter.
// Can write a closure without name by surrounding code with braces ({}). Use in to separate the arguments and return type from the body
numbers.map( { (number: Int) -> Int in
    let result = 3*number
    return result
    
})
let mappeNumbers = numbers.map({ number in 3*number })
print(mappeNumbers)
let sortedNumbers = numbers.sorted
{$0 > $1}
print(sortedNumbers)

