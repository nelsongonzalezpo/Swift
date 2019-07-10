import UIKit

//Types
print("Types")
var message: String = "Hello World"
print(message)

//Constant
print("Constant")
let gravity: Double = 9.81
print("Gravity is \(gravity) m/s2")

//Any type
var test: Any
test = "String"
print(test)
test = 1000
print(test)

//Tuples
var country = (number: 44, code: "GB", name: "United Kingdom")
print(country)
print(country.number)
print(country.code)
print(country.name)

func getCountry() -> (number: Int, code: String, name: String){
    
    let country2 = (number: 45, code: "ESP", name: "Spain")
    return country2
}
print("Get Country")
let resultCountry = getCountry()
print(resultCountry)

//Optional

var option: String?
print("No tiene valor \(option)")
option = "Hello"

if let unwrapped = option{
    print("Tiene valor \(unwrapped)")
}

else{
    print("Sigue sin valor \(option)")
}


//Function optional
func printName(name: String?) -> String?{
    
    if let n = name{
        return n
    }
    
    return nil
    
}

print("Hola", printName(name: "Juan"))

//Function optional correct
func printName2(name: String?)-> String?{
    
    guard let n = name else{return nil}
    return n
    //print(n)
}

print(printName2(name: "Jose")!)

//Enums

enum DaysOfWeek{
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

var today = DaysOfWeek.tuesday
print("Today is \(today)")

enum names:String{
    case juan = "Juan"
    case pedro = "Pedro"
}


