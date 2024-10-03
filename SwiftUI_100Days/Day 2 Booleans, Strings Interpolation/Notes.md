# Booleans
```Swift
let a = true
```
This is a `Boolean` variable
```Swift
let a = 120.isMultiple(of: 3)
```
Booleans can be assigned.
```Swift
var b = true
b = !b
print(b)
```
`false`  
`!`: not
```Swift
var b = false
b.toggle()
print(b) 
```
`true`
# Join strings together
```Swift
let string1 = "a"
let string2 = "b"
let joined = string1 + string2
print(joined)
```
`ab`
Use `+` to join strings together
```Swift
let name = "Goose"
let age = 22
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)
```
String interpolation is much more efficient than `+`.

`String(age)` tell Swift to treat the number like a string. But it will be easier to read to just use `\(age)`.

```Swift
print("5 x 5 is \(5 * 5)")
```
Calculations can also be put into strings.

- [ ] Learn more about [string interpolation](https://www.hackingwithswift.com/articles/178/super-powered-string-interpolation-in-swift-5-0) 


```Swift
let x = "😅"
print(x)
```
`😅`  
Strings can work with emoji.


