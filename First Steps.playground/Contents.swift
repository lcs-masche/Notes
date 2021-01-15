import Cocoa

var str = "Hello, playground"
str = "Goodbye"
//Variables are called variables cause they can vary, u can change their variables freely


var age = 17
var polulation = 8_000_000

// variables are used for text and intergers for numbers
// We don't have to do anything, Xcode will show us wether it used an it or a var
// Int = yellow  var = orange
// But once a number is in quotes it counts as a variable for example: var IQ = "150" is still a variable although it includes a number

var str1 = """
This is used
for
multiple
lines
"""
// We use this to type in more than one line for a string or a variable
// But something is off here, nut what?

var str2 = """
After every line \
of code \
we need a \
backslash to tell \
Xcode that this \
is a line split
"""
// This is needed so the text looks right and doesn't have any weired splits in it
// if this wasn't there Xcode would give us something like this used\nfor\nmultiple\nlines as an output

var pi = 3.141
var awsome = true
//var pi is an example for a double, which is a variable with fractional values
//  as for booleans they are varibales that have a true / false value like: Var rain = true, which would mean it is raining

var score = 99
var place = 100-score
var score1 = "Your score was \(score) points!"
var results = "Dependednt on your score \(score) you placed \(place)."

// her we used another variable to determine the outcome of the next one, so what this means we can run another code in a variable


let myAge = 17
let yourAge = 34
let paulsAge = 22
let ourAge = myAge + yourAge + paulsAge

// let defines a specific value which are values that can be set once and never again
// If you try to change that Xcode will refuse to run the code

let str3 = "Hello, PLayground"
let slbum: String = "Reputattion"
let year: Int = 1984
let height: Double = 1.73
let thunder: Bool = false

//normally Xcode defines wether a value is a string, Int, Double or a Bool on its own but you can also define it urself



