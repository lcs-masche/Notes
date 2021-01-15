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
