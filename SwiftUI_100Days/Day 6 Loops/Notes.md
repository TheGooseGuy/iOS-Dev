# Loops
```Swift
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}
```
```Swift
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}
```
`1...12`: all integer numbers between 1 and 12. (inclusive)


Nested loops:
```Swift
for i in 1...12 {
    print("The \(i) times table:")

    for j in 1...12 {
        print("  \(j) x \(i) is \(j * i)")
    }

    print()
}
```
`1..<12`: 1 to 12 but exclude the 12 (final number)

```Swift
var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)
```
When the loop variable doesn't matter, use an underscore. (Make the code run faster)

... : up to
..< : up to but excluding

1 to 5 means 1,2,3,4  
1 through 5 means 1,2,3,4,5

`1...`: from 1 to the end

# While Loop
