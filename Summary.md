# Variables, Constants, Strings, and Numbers
## Variables and Constants
`var`: create a variable (not for change the for )
```Swift
var variable = "changeable"
```

`let`: create a constant (unchangeable)
```Swift
let constant = "changeable"
```

```Swift
variable = "a new value" // Use assignment to change the value of a variable
```

Prefer to use constants rather than variables.
## Strings
```Swift
let string = "this is a string"
let long_string = """
strings can be breaked
into lines
using triple quotes
```
functions:   
`string.uppercased()`: return the string uppercased  
`string.hasPrefix("the prefix")`: return true/false  
`string.hasSuffix("the suffix")`: return true/false

Strings are CaSe SenSiTive in Swift.
## Whole Numbers - Integers
```Swift
let number = 10
let large_number = 10_000_000 // Swift ignores underscore
```
```Swift
// Just like Python
var n = 10
n += 2
n -= 2
n *= 2
n /= 2
```
functions:  
`number.isMultiple(of:3)`: return true/false
## Decimal Numbers - Doubles
```Swift
let doubles = 0.1 + 0.2 // 0.30000000000000004
```
```Swift
let a = 1
let b = 2.0
let c = a + b // Error
// Binary operator '+' cannot be applied to operands of type 'Int' and 'Double'
let c = a + Int(b) // 3
let c = Double(a) + b // 3.0
```

```Swift
var x = "string"
x = 3 // Error
// Cannot assign to value: 'x' is a 'let' constant
```
Variable type can not be changed = Swift is a type-safe language.
# Booleans, Strings Interpolation
## Booleans
`true`, `false`, `!`
```Swift
var a = false // This is a boolean variable
a.toggle()
print(a) // true
```
## Strings Interpolation
```Swift
let string1 = "a"
let string2 = "b"
let joined = string1 + string2 // Use '+' to join strings together
print(joined) // ab
```

String Interpolation is much more efficient than `+`.
```Swift
let name = "Goose"
let age = 22
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)
```
Strings can work with emoji.
```Swift
let x = "😅"
print(x)
```
`😅`  
# Arrays, Dictionaries, Sets, and Enums
## Array
Array can only hold 1 type of data.
The index starts at 0.
```Swift
var array = ["element1", "element2", "element3"]
print(array[1]) // element2

array.append("element4") // to add new items
```

```Swift
var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])
```
Use `Array<Int>`, `Array<String>()` to specify the type of array. Or use `[String]()` to create an array with type string.

Use `.count` to read how many items are in an array.  
Use `.remove(at: )` to remove one item at a specifix index.  
Use `.removeAll()` to remove everything.  
Use `.contains()` to check whether an aray contains a particular item.
Use `.sorted()` to sort an array, alphabetically or numerically
## Dictionary
```Swift
let dictioanry = ["key1": "value1", "key2": "value2", "key3": "value3"]
```
Or
```Swift
let dictioanry = ["key1": "value1", 
                  "key2": "value2", 
                  "key3": "value3"]
print(dictionary["key1"]) //Optional("value1")

print(dictionary["key4", default: "Unknown"]) // Use default if the key doesn't exist

// Dictionaries don’t allow duplicate keys to exist. If you set a value for a key that already exists, Swift will overwrite whatever was the previous value.
```
`count` and `removeAll()` also works for dictionary.
## Set
```Swift
let set1 = Set<String>(["a", "b", "c"])

set1.insert("d")
```
Set will automatically remove any duplicate values, and it won't remember the exact order.  
Every time it prints the set, it will be a random order.

`count` can count the items in a ser  
`sorted()` will return a sorted array containing the set's item.
## Enum - enumeration
```Swift
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}


var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday
```
```Swift
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .tuesday  // Enum name can be skipped after first assignment
day = .friday
```
Enums are faster than string
# Type Annotations
```Swift
let surname: String = "Lasso" // type annotation
var score: Int = 0
```
Type annotations: `String`, `Int`, `Double`, `Bool`, `[String]`: array of strings, `[String: String]`: Dictionary of strings, `Set<String>`: Set of strings

```Swift
var teams: [String] = [String]()
//Use type annotation when creating an empty array of strings
```
```Swift
let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)
```
```Swift
var percentage: Double = 99
```
Swift will know percentage is a double and value is 99.0, no problem, but personally i would never do this, at least for now I think so.  
```Swift
var percentage: Double = 99.0
```
This is what I prefer to do.
# If, Switch, and the Ternary Operator
## If
```Swift
if someCondition {
    print("Do something")
}
```

```Swift
let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}
```
### Multiple Consitions
```Swift
if someCondition {
    print("This will run if the condition is true")
} else {
    print("This will run if the condition is false")
}
```

```Swift
let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}
```

To combine conditions: `&&` and, `||` or
## Switch
```Swift
switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
default:
    print("This will run if all case failed to match")
}
```
Features of `switch`:  
1. All `switch` statements must be exhaustive, meaning that all possible values must be handled in there so you can’t leave one off by accident.
2. Swift will execute the first case that matches the condition you’re checking, but no more. Other languages often carry on executing other code from all subsequent cases, which is usually entirely the wrong default thing to do.

Three cases to use Switch:
1. Swift requires that its `switch` statements are exhaustive, which means you must either have a `case` block for every possible value to check (e.g. all cases of an enum) or you must have a `default` case. This isn’t true for `if` and `else if`, so you might accidentally miss a case.
2. When you use `switch` to check a value for multiple possible results, that value will only be read once, whereas `if` you use if it will be read multiple times. This becomes more important when you start using function calls, because some of these can be slow.
3. Swift’s `switch` cases allow for advanced pattern matching that is unwieldy with `if`.
## Ternary Conditional Operator
Binary Operators: +, -, ==

Ternary operators work with three pieces of input, and in fact because the ternary conditional operator is the only ternary operator in Swift, you’ll often hear it called just “the ternary operator.”
```Swift
let age = 18
let canVote = age >= 18 ? "Yes" : "No"
```

```Swift
let names = ["Jayne", "Kaylee", "Mal"]   
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)
```
Sometimes, particularly in SwiftUI, we have to use ternary operator instead of regular `if`/`else`