Xcode -> File -> New -> Playground -> MacOS
# Variables and Constants
```Swift
var greeting = "Hello, playground"
```
`var`: create a new variable  
`greeting`: variable name  
`"Hello, playground"`: initial value  

```Swift
var name = "Ted"
name = "Rebecca"
name = "Keeley"
```
only use `var` to create a variable, not when changing the value of a variable

```Swift
let character = "Daphne"
```
`let`: creates a constant. This is unchangeable, will report error if it gets changed

```Swift
var playerName = "Daphne"
print(playerName)

playerName = "Dani"
print(playerName)
```

Prefer to use constants rather than variables, because:
1. allow Swift to optimize the code
2. allow Swift to make sure you don't change a constant's value by accident.

Constants are basically variables that can't be changed.
# Strings
```Swift
let string1 = "This is a string."

let string2 = "This is a \"string\"" 

let string3 = """
Strings
can be
breaked
into lines
using
triple quotes
"""

print(string1.count)


print(string1.uppercased())

print(string1.hasPrefix("This"))
print(string2.hasSuffix("."))
```
**Strings are case-sensitive** in Swift

Use triple quotes to break lines for long text (unless?)
# Whole Numbers - Integers
```Swift
let score = 10
let large_number = 10_000_000
```
Swift ignores underscore "_"

```Swift
var n = 10
n += 2
n -= 2
n *= 2
n /= 2
```
Just like Python.


```Swift
let number = 120
print(number.isMultiple(of:3))
print(120.isMultiple(of:3))
```
`true`  
`true`  
# Decimal Numbers - Doubles
```Swift
let number = 0.1 + 0.2
print(number)
```
`0.30000000000000004`


```Swift
let a = 1
let b = 2.0
let c = a + b
```
Error: `Binary operator '+' cannot be applied to operands of type 'Int' and 'Double'`

```Swift
let c = a + Int(b)
```
`3`

```Swift
let c = Double(a) + b
```
`3.0`

```Swift
var x = "string"
x = 3
```
Error: `Cannot assign to value: 'x' is a 'let' constant`  
Variable type cannot be changed - Swift is a type-safe language.