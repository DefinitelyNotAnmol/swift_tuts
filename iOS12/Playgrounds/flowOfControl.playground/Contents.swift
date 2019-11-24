import UIKit

var str = "Hello, playground"

var number = 5
print(number%2)

var flag:Bool = false
if !(number <= 5) {
    print("It works")
}
    
else if number <= 10 {
    print("it also works")
}
    
else {
    print("It does not work")
}

//
//for _ in 1...6{
//    print("Hello")
//}

var sum:Int = 0
var n:Int = 10

for i in 1...n {
    sum += i
}

print(sum)

var counter:Int = 5
while counter >= 0 {
    print("Hello", terminator:" ")
    counter -= 1
}

print()

var count:Int = 1
repeat {
    print("Hello", terminator:" ")
    count -= 1
} while count >= 0
