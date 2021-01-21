import Cocoa

var str = "Hello, playground"

//find the digits that represent 27 in binary

//use the remainder operator to get the first binary digit

//the remainder operator in %
27%2

//find the decimal value left to convert

//the division operator is /
27/2

// get next binary digit
13%2
//Get the value left to convert
13/2

//get next binary digit
6%2
//get next remainder value
6/2

//get next binary digit
3%2
//get next remainder value
3/2

//last binary digit
1%2
//Done- because decimal value is zero
1/2



204%2
204/2

102%2
102/2

51%2
51/2

25%2
25/2

12%2
12/2

6%2
6/2

3%2
3/2

1%2
1/2

0%2
0/2

50%2
50/2

25%2
25/2

12%2
12/2

6%2
6/2

3%2
3/2

1%1
1/1



//Enumeration
//Lists possibilities
//The Int difienes the type of the raw value associated with the case
//this is a another example of abstarction
//-hides complexity
//makes the call site easier to read
//e.g.: getRepresentation(of: number , inBase: binary.)
enum NumberSystemBase: Int {
    case binary = 2
    case octal = 8
    case hexadecimal = 16

}




/*
 Functions
 Functions are a way to group (encapsulate) related behaviour
 Once some behaviour is inside a function, the complexity is hidden
 We can use or call the function whatever we want
 */

func getRepresentation(of valueToConvert: Int, inBase base: NumberSystemBase
) -> String {


    // Create a variable with the value of "valueToConvert"
    // A variable CAN be changed once created
    var decimalValueLeftToConvert = valueToConvert
    // This creates an empty string
    // A string is just text, like "hello"
    var representation = ""

    // The abstraction we will use is a LOOP
    // Our END CONDITION is that the decimalValueLeftToConvert is equal to zero
    // So long as the CONDITION is true, the block of code surrounded by the {  } brackets will be run repeatedly
    while decimalValueLeftToConvert > 0 {


        // Get the next binary digit
        let nextDigit = decimalValueLeftToConvert % base.rawValue


        // Add that new digit to the binary representation
        // Swift is a STRICTLY TYPED language
        // It DOES NOT automatically convert data types
        // So, to make the Int into a String, we need to specify this
        if base == .hexadecimal {
        //a swich staement evaluates a some value
        //and takes different actions depending on the value
            switch nextDigit {
            case 0...9:
                representation = String(nextDigit) + representation
            case 10:
                representation = "A" + representation
            case 11:
                representation = "B" + representation
            case 12:
                representation = "C" + representation
            case 13:
                representation = "D" + representation
            case 14:
                representation = "E" + representation
            case 15:
                representation = "F" + representation




            default:
                break
            }
        } else {
            representation = String(nextDigit) + representation
        }


        // Get the decimal value left to convert
        decimalValueLeftToConvert = decimalValueLeftToConvert / base.rawValue


    }
    return representation

}



//getRepresentation(of: 17, inBase: 2)
//getRepresentation(of: 17, inBase: 16)


getRepresentation(of: 17 , inBase: .binary)
getRepresentation(of: 17 , inBase: .octal)
getRepresentation(of: 15 , inBase: .hexadecimal)
getRepresentation(of: 900, inBase: .hexadecimal)

getRepresentation(of: 50, inBase: .binary)
getRepresentation(of: 50, inBase: .binary)




//bianry do decimal
//base 2 to base 10
 let value = "0111"


//from what base r we converting
let base = 2.0

// the exponent value at the right most digit
var exponent = 0.0

//the current summ in decimal
var decimalEquivalent = 0.0

//iterate over each character
//from right to left

for character in value.reversed() {

   if let digit = Double(String(character)) {

        //add the current sum
        decimalEquivalent += digit * pow(base, exponent)
        exponent += 1
    }
}
decimalEquivalent




value to convert
let value2 = "23"
//base we are converting fro
let base2 = 8.0
var decimalEquivalent2 = 0.0
var exponent2 = 0.0

if value2.contains("9") || value2.contains("8") {
    print("ERROR")
} else {
    for character in value2.reversed() {
        if let digit2 = Double(String(character)) {
            decimalEquivalent2 += digit2 * pow(base2, exponent2)
            exponent2 += 1
        }
    }
}
decimalEquivalent2

let value3 = "4ABDDCFAFF"
let base3 = 16.0

var exponent3 = 0.0

var decimalEquivilant3 = 0.0

for character in value3.reversed() {
    if let digit = Double(String(character)) {
        decimalEquivilant3 += digit * pow(base3, exponent3)
    } else {
        switch character {

        case "A":
            decimalEquivilant3 += 10.0 * pow(base3, exponent3)
        case "B":
            decimalEquivilant3 += 11.0 * pow(base3, exponent3)
        case "C":
            decimalEquivilant3 += 12.0 * pow(base3, exponent3)
        case "D":
            decimalEquivilant3 += 13.0 * pow(base3, exponent3)
        case "E":
            decimalEquivilant3 += 14.0 * pow(base3, exponent3)
        case "F":
            decimalEquivilant3 += 15.0 * pow(base3, exponent3)

        default:
            break

        }
    }
    exponent3 += 1
}
print(decimalEquivilant3)



enum NumberSystemBase4: Double {

    case binary = 2.0

    case octal = 8.0

    case hexadecimal = 16.0

}

func getDecimalRepresentation(of value: Int, frombase base: NumberSystemBase4) -> Double {

let value =



    let base = NumberSystemBase4.self



var exponent = 0.0

var decimalEquivalent = 0.0


for character in value.reversed() {

    

    

    if let digit = Double(String(character)) {


        decimalEquivilant3 += digit * pow(base3, exponent3)

        

    } else {


        switch character {

        case "A":

            decimalEquivalent += 10.0 * pow(base, exponent)

        case "B":

            decimalEquivalent += 11.0 * pow(base, exponent)

        case "C":

            decimalEquivalent += 12.0 * pow(base, exponent)

        case "D":

            decimalEquivalent += 13.0 * pow(base, exponent)

        case "E":

            decimalEquivalent += 14.0 * pow(base, exponent)

        case "F":

            decimalEquivalent += 15.0 * pow(base, exponent)

        default:

            break

        }

    }


            exponent += 1

    

}

    return decimalEquivalent

}



























let valuevalue = ""
let basebase = 16.0

var exponent4 = 0.0
var decimalEquivilent4 = 0.0

if basebase.contains(16.0) {
  
    for character in valuevalue.reversed() {
        if let digit = Double(String(character)) {
            decimalEquivilent4 += 10.0 * pow(basebase, exponent4)
        } else {
            switch character {

            case "A":
                decimalEquivilent4 += 10.0 * pow(basebase, exponent4)
           
            case "B":
                decimalEquivilent4 += 10.0 * pow(basebase, exponent4)
            
            case "C":
                decimalEquivilent4 += 10.0 * pow(basebase, exponent4)
            
            case "D":
                decimalEquivilent4 += 10.0 * pow(basebase, exponent4)
            
            case "E":
                decimalEquivilent4 += 10.0 * pow(basebase, exponent4)
            
            case "F":
                decimalEquivilent4 += 10.0 * pow(basebase, exponent4)
            default:
                break

            }
        }
        exponent4 += 1
    }
    
print("The converted value is \(decimalEquivilent4) ")
    
} else {
    if basebase.contains("8.0") {
        
        
        if valuevalue.contains("9") || valuevalue.contains("8") {
            print("ERROR")
        } else {
            for character in value2.reversed() {
                if let digit2 = Double(String(character)) {
                    decimalEquivilent4 += digit2 * pow(base2, exponent4)
                    exponent2 += 1
                }
            }
        }
        decimalEquivilent4
        
    print("The converted value is \(decimalEquivilent4)")
    }
}; else {
    if basebase.contains("2.0") {
        
        for character in basebase.reversed() {

           if let digit = Double(String(character)) {

                decimalEquivilent4 += digit2 * pow(base2, exponent4)
                exponent += 1
            }
        }
        decimalEquivilent4
        print("The converted value is \(decimalEquivilent4)")
    }}
