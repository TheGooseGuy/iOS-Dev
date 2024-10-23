# Default Value for Parameters
```Swift
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)
```
Set default value for `end`

# How to handle error in function
1. Starting a block of work that might throw errors, using do.
2. Calling one or more throwing functions, using try.
3. Handling any thrown errors using catch.
```Swift
do {
    try someRiskyWork()
} catch {
    print("Handle errors here")
}
```

```Swift
enum PasswordError: Error {
    case short, obvious
}
```
```Swift
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}
```
```Swift
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}
```