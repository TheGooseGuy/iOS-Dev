When we don't want to assign a value immediately, or sometimes we want to override Swift's choice of type, we use ***type annotations***.

```Swift
let surname = "Lasso"
var score = 0
```
This is *type inference*. 
```Swift
let surname: String = "Lasso"
var score: Int = 0
```
This is *type annotation*. `surname` must be a string, and `score` must be an integer

```Swift
var score: Double = 0
```
Without the annotation, Swift would infer `score` to be an integer. You can also use `var score = 0.0` to specify that it's a double.

Type annoations for data structures so long:  
`String`, `Int`, `Double`, `Bool`, `[String]`: array of strings, `[String: String]`: Dictionary of strings, `Set<String>`: Set of strings

```Swift
var teams: [String] = [String]()
```
Use type annotation when creating an empty array of strings
```

```Swift
var cities: [String] = [] // with type annotation
var clues = [String]() // without type annotation


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