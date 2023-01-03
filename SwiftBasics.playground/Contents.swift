import Foundation

// this is a comment
print("Hello World")

/* This is a multi
 line comment here */


// interporlation
print("The result of 2 + 3 = \(2 + 3)")


// variables
var a = 5
var b = 8

print("the value of a is \(a)")
print("the value of b is \(b)")

(a, b) = (b, a)
print("the value of a is \(a)")
print("the value of b is \(b)")


// Swift arrays
let arr = [1, 2, 3]
let firstItem = arr[0]

var numbers = [45, 73, 195, 53]
var computedNumbers: [Int] = numbers.enumerated().map({ (index, element) in
    return element * numbers[((index + 1) % numbers.count)]
})
print(computedNumbers)

// Constants
let constant: Int = 1 // cannot be reassigned

// datatypes
// string
let str: String = "Hello world"

// int
let number: Int = 1

// float
let float: Float = 1.0

// Double
let double: Double = 2.0

// Bool
let bool: Bool = true

// Array
var array: [Int] = [1, 2, 3]

// Dictionaries
let dict: [String:Int] = ["People": 1]

// Random number
let rand: Int = Int.random(in: 1 ... 100)

// Range operator
// 1 ... 3 => closed range operator includes upper bound
// 1 ..< 3 => half open range excludes upper bound

// Random element in array
array.randomElement()

// Shuffle array
array.shuffle()


var password: String = ""
let alphabet: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

for _ in 1...6 {
    password += alphabet.randomElement()!
}
print(password)
