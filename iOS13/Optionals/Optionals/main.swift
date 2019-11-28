
let optional: String? = nil

// 1. Force Unwrapping
// optional!
print(optional!)

// 2. Checking for nil
// if optional != nil {}
if optional != nil {
    print(optional!)
}

// 3. Optional Binding
// if let option = optional {}
if let text = optional {
    print(text)
}

// 4. Nil Coalescing Operator
// optional ?? defaultValue
print(optional ?? "Not Available")

// 5. Optional Chaining
// optionalObject?.propertyOrMethod
struct Entity {
    var size: Int = 100
    func move() {
        print("Moving")
    }
}

var optional1: Entity?
optional1?.move()
