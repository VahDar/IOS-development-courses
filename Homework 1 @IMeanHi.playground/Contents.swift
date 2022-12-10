import UIKit

// Task 1:

var myArray = [-3, 2, 4, -7, 8, 5, -11, 13, -1, -9]

for i in 0..<myArray.count {
    if myArray[i] < 0 {
        myArray[i] = 0
    }
}
print(myArray)

// Task 2:
var min = 0
var max = 0
for i in myArray {
    if i < min {
    min = i
    } else if i > max {
        max = i
}
}

print("Array minimum value = \(min) and Array maximun value \(max)")

// Task 3:

var sum = 0
for index in myArray {
    sum += index
}
//print(sum)

// Task 4:

let twelveMonth = ["January", "Fabruary", "March", "April", "May", "June", "July", "August", "September", "November", "October", "December"]

var dictMonth: [Int: String] = [:]

for i in 0..<twelveMonth.count {
    
        dictMonth[i] = twelveMonth[i]
       
    
}
//print(dictMonth)


// Task 5:

var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]

(dictionary["first"], dictionary["fourth"]) = (dictionary["fourth"], dictionary["first"])

//print(dictionary)

// Task 6:


var calendar: [Int: [String]] = [:]

for i in 1970...2022 {
    calendar.updateValue(twelveMonth, forKey: i)
}
//print(calendar)


// Task 7:

for newMonth in calendar.keys {
    calendar[newMonth]?.append("Wownember")
}
//print(calendar)


// Task 7.1

var days = [Int]()

for  i in 1...31 {
    days.append(i)

}
 print(days)

var calendarPro: [Int: [String: [Int]]] = [:]
var monthDays: [String: [Int]] = [:]


for index in twelveMonth {
    monthDays[index] = days
}

for i in 1970...2022 {
    calendarPro[i] = monthDays
    
}

print(calendarPro[2019]!["September"]![0])


// Task 8:

let number = 10
let number2 = 8

if number == number2 {
    print((number + number2) * 3 )
} else {
    (number + number2) % 2 == 0
        print(number + number2)
    }


    

// Task 9:

let string = "I will gets the words!"
let getWords = string.replacingOccurrences(of: "I will gets the words!", with: "I words")

print("\(getWords)")
