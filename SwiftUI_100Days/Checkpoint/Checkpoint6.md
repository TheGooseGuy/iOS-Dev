Create a struct to store information about a car, including its model, number of seats, and current gear, then add a method to change gears up or down. 

---
Solution:
```Swift
struct car_info {
    let model: String
    let number_of_seats: Int
    private(set) var currentGear: Int
    
    enum GearChangeDirection {
        case up, down
    }
    
    mutating func change_gear(to direction: GearChangeDirection) {
        switch direction{
        case .up:
            if currentGear < 10 {
                currentGear += 1
            } else {
                print("Already in the highest gear.")
            }
        case .down:
            if currentGear > 1 {
                currentGear -= 1
            } else {
                print("Already in the lowest gear.")
            }
        }
    }
}
```