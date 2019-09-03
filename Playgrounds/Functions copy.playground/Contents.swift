import UIKit

//Recursive function for Factorial Calculation
func factorial(number value:Int) -> Int {
    if value <= 1 {
        return 1
    }

    return factorial(number: value-1) * value
}

//Recursive function for Fibonacci series
func fibonacci(number value:Int) -> Int {
    if value == 0 {
        return 0
    }

    if value == 1 {
        return 1
    }

    return fibonacci(number: value-1) + fibonacci(number: value-2)
}
func addTwoNumbers(num1 a:Int, num2 b:Int) -> Int{
    return a + b
}

func subTwoNumbers(number1:Int, number2:Int) -> Int {
    return number1 - number2
}

func multiTwoNumbers(_ number1:Int, _ number2:Int) -> Int {
    return number1 * number2
}

print(factorial(number: 15))
print(fibonacci(number: 7))
print(addTwoNumbers(num1: 10, num2: 20))
print(subTwoNumbers(number1: 30, number2: 2))
print(multiTwoNumbers(5, 2))

