import UIKit

func isDivisible(by number: Int, input list: [Int]) {
    for n in list {
        if n % number == 0 {
            print(n)
        }
    }
}


let listOfNumbers = [1, 2, 3, 5, 6, 7, 8, 9, 0, 10]
isDivisible(by: 2, input: listOfNumbers)
