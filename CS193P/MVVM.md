# Model and UI
Swift focuses on separating "Logic and Data" from "UI".  
This "Logic and Data" is the MODEL, model can be anything, such as a SQL database, or some machine learning code, or many other things or any combinations of such things.  
The UI is a visual manifestation of the Model.

Connecting the Model to the UI:
1. The model could just be an `@State` in a view (very minimal to no separation)
2. The model might only be accessible via a gatekeeper "View Model" class (full separation)
3. There is a View Model class, but the Model is still directly accessible (partial separation)

(Most of the time, just use option 2. If the model is really really extremely easy, use option1. Fuck option 3)

This No.2 is the architecture that we call "MVVM":  
**M**odel-**V**iew-**V**iew**M**odel

This is the primary architecture for any resonably complex SwiftUI application.

Model (UI Independent, Data + Logic)  
->  notice changes ->  
ViewModel (Binds View to Model, Interpreter, Gatekeeper) publish "something changed"  
->
View (Reflects the Model, Stateless, Declared, Reactive) automatically observes publications, pulls data and rebuilds.

# Varieties of Types
## struct and class
ViewModel is class, for everything else we use struct

|struct|class|
|------|-----|
|Value type|Reference type|
|Copied when passed or assigned|Passed around via pointers|
|Copy on write|Automatically reference counted|
|Functional Programming|Object-Oriented Programming|
|No inheritance|Inheritance (single)|
|"Free" `init` initializes ALL `var`s|"Free" `init` initializes No `Var`s|
|Mutability is explicit (`var` vs `let`)|Always mutable|
|Your "go to" data structure|only used in specific circumstances|
||The ViewModel in MVVM is always a class|
