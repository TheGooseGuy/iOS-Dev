# `if`
```Swift
if someCondition {
    print("Do something")
}
```
```Swift
let score = 85

if score > 80 {
    print("Great job!")
}
```
```Swift
let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
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
```Swift
// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

// Display the result
print(numbers)
```
# Multiple Conditions
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

```Swift
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}
```
Use `&&` to combind two conditions.  
`||`: Or

```Swift
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}
```
# `switch`
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
}
```
Features of `switch`:  
1. All `switch` statements must be exhaustive, meaning that all possible values must be handled in there so you can’t leave one off by accident.
2. Swift will execute the first case that matches the condition you’re checking, but no more. Other languages often carry on executing other code from all subsequent cases, which is usually entirely the wrong default thing to do.
```Swift
let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}
```
Add a `default` value, it will be run if all case failed to match.  


Three cases to use Switch:
1. Swift requires that its `switch` statements are exhaustive, which means you must either have a `case` block for every possible value to check (e.g. all cases of an enum) or you must have a `default` case. This isn’t true for `if` and `else if`, so you might accidentally miss a case.
2. When you use `switch` to check a value for multiple possible results, that value will only be read once, whereas `if` you use if it will be read multiple times. This becomes more important when you start using function calls, because some of these can be slow.
3. Swift’s `switch` cases allow for advanced pattern matching that is unwieldy with `if`.

There’s one more situation, but it’s a little fuzzier: broadly speaking, if you want to check the same value for three or more possible states, you’ll find folks prefer to use `switch` rather than `if` for legibility purposes if nothing else – it becomes clearer that we’re checking the same value repeatedly, rather than writing different conditions.

# Ternary Conditional Operator
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

