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
`string.hasPrefix("the prefix")`: return True/False  
`string.hasSuffix("the suffix")`: return True/False

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
`number.isMultiple(of:3)`: return True/False
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
