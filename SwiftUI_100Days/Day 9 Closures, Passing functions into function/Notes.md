# Closures
```Swift
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)
```
When calling the function, use `data(1989)` instead of `data(for: 1989)`

One of the most common reasons for closures in Swift is to store functionality – to be able to say “here’s some work I want you to do at some point, but not necessarily now.” Some examples:
1. Running some code after a delay.
2. Running some code after an animation has finished.
3. Running some code when a download has finished.
4. Running some code when a user has selected an option from your menu.


Format of closure
```Swift
// Function
func pay(user: String, amount: Int) {
    // code
}

//Closure
let payment = { (user: String, amount: Int) in
    // code
}
```
