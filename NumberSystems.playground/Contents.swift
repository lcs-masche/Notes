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



/*
 Functions
 Functions are a way to group (encapsulate) related behaviour
 Once some behaviour is inside a function, the complexity is hidden
 We can use or call the function whatever we want
 */

func GetBinaryRepresentation(of valueToConvert: Int) -> String {
    
  
    // Create a variable with the value of "valueToConvert"
    // A variable CAN be changed once created
    var decimalValueLeftToConvert = valueToConvert
    // This creates an empty string
    // A string is just text, like "hello"
    var binaryRepresentation = ""

    // The abstraction we will use is a LOOP
    // Our END CONDITION is that the decimalValueLeftToConvert is equal to zero
    // So long as the CONDITION is true, the block of code surrounded by the {  } brackets will be run repeatedly
    while decimalValueLeftToConvert > 0 {
        

        // Get the next binary digit
        let nextBinaryDigit = decimalValueLeftToConvert % 2
        

        // Add that new digit to the binary representation
        // Swift is a STRICTLY TYPED language
        // It DOES NOT automatically convert data types
        // So, to make the Int into a String, we need to specify this
        binaryRepresentation = String(nextBinaryDigit) + binaryRepresentation
        

        // Get the decimal value left to convert
        decimalValueLeftToConvert = decimalValueLeftToConvert / 2
        

    }
    return binaryRepresentation
    
}

GetBinaryRepresentation(of: 900)
