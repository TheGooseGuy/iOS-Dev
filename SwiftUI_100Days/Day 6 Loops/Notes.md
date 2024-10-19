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
```Swift
var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")
```
for loops are more common than while loops

while loop can keep the loop going around and until we are ready to exit

# Continue, Break
```Swift
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}
```

```Swift
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
```
## Labeled Statements
```Swift
outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop // Notice that without this break label, the program will still run even we already get the result.
            }
        }
    }
}
```