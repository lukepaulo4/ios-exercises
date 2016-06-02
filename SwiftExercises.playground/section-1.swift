import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
   
    return "My favorite cheese is " + cheese + "."
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."


/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
let newArray = numberArray + [5]

//OR change 'let numberArray' to a var to make it changeable!

// Add 5 to this array
// WORK HERE

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
numberDictionary[5] = "five"
print(numberDictionary)


//^^Swift dictionaries are random like Obj-C, so I think this is good?

// Add 5 : "five" to this dictionary
// WORK HERE

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE



for numb in 1...10 {
    print("\(numb)")
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE

for numb in 1..<10 {
    print("\(numb)")
}




let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:[[String : String]]) -> [String] {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    
    var favDrinksSon = [String]()
 
    for character in characters {
        if let drink = character["favorite drink"] {
            favDrinksSon.append(drink)
        }
    }
    
    return favDrinksSon
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Optionals

*/

func emailFromUserDict(userDict : [String : String]) -> String {
    // Return the user's email address from userDict, or return "" if they don't have one
    // WORK HERE
    
    let email = userDict["email"]
    
    if email != nil {
        let unwrappedEmail = email!
        return unwrappedEmail
    } else {
        return ""
    }
}


let mostafaElSayedUser = ["name" : "Mostafa A. El-Sayed", "occupation" : "Chemical Physicist", "email" : "mael-sayed@gatech.edu", "awards" : "Langmuir Award in Chemical Physics, Arabian Nobel Prize, Ahmed Zewail prize, The Class of 1943 Distinguished Professor, 2007 US National Medal of Science", "birthday" : "8 May 1933"]

let marjorieBrowneUser = ["name" : "Marjorie Lee Browne", "occupation" : "Mathematician", "birthday" : "September 9, 1914"]


// If your emailFromUserDict function is implemented correctly, both of these should output "true":

emailFromUserDict(mostafaElSayedUser) == "mael-sayed@gatech.edu"
emailFromUserDict(marjorieBrowneUser) == ""

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
//var inputArray = ["milk", "eggs", "bread", "challah"]

func outputFoodStuff(inputArray:Array<String>) -> String {
    var outNow = ""
    for inputNow in inputArray {
        outNow += ";\(inputNow)"
    }
    
    return outNow

}

  let expectedOutput = outputFoodStuff(strings)

//let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]
var cerealSortage = cerealArray

var sortedCereally = cerealSortage.sort()


