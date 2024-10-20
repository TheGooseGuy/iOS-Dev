# Functions
```Swift
// Define a function
func function_name(parameters: TypeAnnotation) {
    "function body"
}

// Call a function
function_name(parameters: TypeAnnotation)
```
# Return Values
```Swift
func function_name() -> TypeAnnotation {
    return "result"
}
```
```Swift
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)
```
```Swift
func areLettersIdentical(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted() // Can even omit the return keyword, only works when the function only contains one line of code
}
```
```Swift
func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)
```
```Swift
func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}
```
# Return Multiple Values - Tuples
```Swift
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")
```
```Swift
func getUser() -> (String, String) {
    ("Taylor", "Swift")
}

let user = getUser()
print("Name: \(user.0) \(user.1)") // This use numerical indices
```
```Swift
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
let firstName = user.firstName
let lastName = user.lastName

print("Name: \(firstName) \(lastName)")
```
## When to use array, set or tuple
Remember: arrays keep the order and can have duplicates, sets are unordered and can’t have duplicates, and tuples have a fixed number of values of fixed types inside them. 

# Customize Parameter Labels
Swift gives us two important ways to control parameter names: we can use _ for the external parameter name so that it doesn’t get used, or add a second name there so that we have both external and internal parameter names.
```Swift
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
```
The main reason for skipping a parameter name is when your function name is a verb and the first parameter is a noun the verb is acting on.