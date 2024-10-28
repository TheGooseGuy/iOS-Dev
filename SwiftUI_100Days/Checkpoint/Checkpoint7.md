Make a class hierarchy for animals, starting with `Animal` at the top, then `Dog` and `Cat` as subclasses, then Corgi and Poodle as subclasses of `Dog`, and `Persian` and `Lion` as subclasses of `Cat`.

But there’s more:

1. The `Animal` class should have a `legs` integer property that tracks how many legs the animal has.
2. The `Dog` class should have a `speak()` method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
3. The `Cat` class should have a matching `speak()` method, again with each subclass printing something different.
4. The `Cat` class should have an `isTame` Boolean property, provided using an initializer.

---
Solution:
```Swift
class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Generic dog barking sound")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Corgi barks in a cheerful way!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poodle barks elegantly!")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Generic cat meowing sound")
    }
}

class Persian: Cat {
    override func speak() {
        print("Persian cat meows softly.")
    }
}

class Lion: Cat {
    override func speak() {
        print("Lion roars loudly!")
    }
}

// Test
let myCorgi = Corgi(legs: 4)
myCorgi.speak()  // Output: Corgi barks in a cheerful way!

let myPoodle = Poodle(legs: 4)
myPoodle.speak()  // Output: Poodle barks elegantly!

let myPersian = Persian(legs: 4, isTame: true)
myPersian.speak()  // Output: Persian cat meows softly.

let myLion = Lion(legs: 4, isTame: false)
myLion.speak()  // Output: Lion roars loudly!

```