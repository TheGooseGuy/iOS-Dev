# Day 1-2 Simple Data
1. Swift lets us create constants using `let`, and variables using `var`.
2. If you don’t intend to change a value, make sure you use `let` so that Swift can help you avoid mistakes.
3. Swift’s strings contain text, from short strings up to whole novels. They work great with emoji and any world language, and have helpful functionality such as `count` and `uppercased()`.
4.  You create strings by using double quotes at the start and end, but if you want your string to go over several lines you need to use three double quotes at the start and end.
5.  Swift calls its whole numbers integers, and they can be positive or negative. They also have helpful functionality, such as `isMultiple(of:)`.
6.  In Swift decimal numbers are called `Double`, short for double-length floating-point number. That means they can hold very large numbers if needed, but they also aren’t 100% accurate – you shouldn’t use them when 100% precision is required, such as when dealing with money.
7.  There are lots of built-in arithmetic operators, such as `+`, `-`, `*`, and `/`, along with the special compound assignment operators such as `+=` that modify variables directly.
8.  You can represent a simple true or false state using a Boolean, which can be flipped using the `!` operator or by calling `toggle()`.
9.  String interpolation lets us place constants and variables into our strings in a streamlined, efficient way.
# Day 3-4 Complex Data
1. Arrays let us store lots of values in one place, then read them out using integer indices. Arrays must always be specialized so they contain one specific type, and they have helpful functionality such as `count`, `append()`, and `contains()`.
2. Dictionaries also let us store lots of values in one place, but let us read them out using keys we specify. They must be specialized to have one specific type for key and another for the value, and have similar functionality to arrays, such as `contains()` and `count`.
3. Sets are a third way of storing lots of values in one place, but we don’t get to choose the order in which they store those items. Sets are really efficient at finding whether they contain a specific item.
4. Enums let us create our own simple types in Swift so that we can specify a range of acceptable values such as a list of actions the user can perform, the types of files we are able to write, or the types of notification to send to the user.
5. Swift must always know the type of data inside a constant or variable, and mostly uses type inference to figure that out based on the data we assign. However, it’s also possible to use type annotation to force a particular type.
