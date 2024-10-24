Your input is this:
```Swift
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
```
Your job is to:
1. Filter out any numbers that are even
2. Sort the array in ascending order
3. Map them to strings in the format “7 is a lucky number”
4. Print the resulting array, one item per line

So, your output should be as follows:
```Swift
7 is a lucky number
15 is a lucky number
21 is a lucky number
31 is a lucky number
33 is a lucky number
49 is a lucky number
```
---
Solution:
```Swift
let luckyNumber = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func findLuckyNumber(_ luckyNumber: [Int], filter: ([Int]) -> [Int], sorted: ([Int]) -> [Int], map: ([Int]) -> Void){
    let filtered = filter(luckyNumber)
    let sorted = sorted(filtered)
    map(sorted)
}

findLuckyNumber(luckyNumber) {numbers in
    return numbers.filter{$0.isMultiple(of: 2) == false}
} sorted: {numbers in
    return numbers.sorted()
} map: {numbers in
    for number in numbers {
        print("\(number) is a lucky number")
    }
}
```