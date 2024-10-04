# Array
```Swift
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]
```
Array can only hold one type of data.  
Index: position of an element, starts at `0`
```Swift
print(beatles[0])
print(numbers[1])
print(temperatures[2])
```
`John`  
`8`  
`26.4`  

```Swift
beatles.append("Adrian")
```
Use `append()` to add new items.  

```Swift
var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])
```
Use `Array<Int>()`, `Array<String>()` to specify the type of array.  
Can also use `[String]()` to create an array with type string

```Swift
print(scores.count)
```
Use `.count` to read how many items are in an array.  
Use `.remove(at: )` to remove one item at a specifix index.  
Use `.removeAll()` to remove everything.  
Use `.contains()` to check whether an aray contains a particular item.
Use `.sorted()` to sort an array, alphabetically or numerically

```Swift
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
```
`ReversedCollection<Array<String>>(_base: ["Bush", "Obama", "Trump", "Biden"])`
# Dictionary
```Swift
let dictioanry = ["key1": "value1", "key2": "value2", "key3": "value3"]
```
Or
```Swift
let dictioanry = ["key1": "value1", 
                  "key2": "value2", 
                  "key3": "value3"]
```
```Swift
print(dictionary["keyy1"])
```
`Optional("value1")`

```Swift
print(dictionary["key4", default: "Unknown"])
```
Use `default` to set a default value if the key doesn't exist

Dictionaries don’t allow duplicate keys to exist. If you set a value for a key that already exists, Swift will overwrite whatever was the previous value.

`count` and `removeAll()` also works for dictionary.
# Set
```Swift
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
```
Set will automatically remove any duplicate values, and it won't remember the exact order.  
Every time it prints the set, it will be a random order.

```Swift
var people = Set<String>()
people.insert("Denzel Washington")
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")
```
Adding items to a set.

Running `contains()` on an array (large) can take a long time, but it will give an instant result if it's a set, even if it's a large set.

`count` can count the items in a ser  
`sorted()` will return a sorted array containing the set's item.
# enum
enum stands for ***enumeration**

```Swift
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
```
```Swift
var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday
```
```Swift
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}
```
```Swift
var day = Weekday.monday
day = .tuesday
day = .friday
```
Enum name can be skipped after first assignment

Although it isn’t visible here, one major benefit of enums is that Swift stores them in an optimized form – when we say Weekday.monday Swift is likely to store that using a single integer such as 0, which is much more efficient to store and check than the letters M, o, n, d, a, y.  
Behind the scenes, Swift can store its enum values very simply, so they are much faster to create and store than something like a string.