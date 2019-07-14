//StrideThrough is inclusive for loop, which basically includes the lowerbound
//for i in stride(from: 5, through: 0, by: -1) {
//    print(i)
//}

//print(); print()

//StrideTo is exclusive for loop, which basically excludes the lowerbound
//for i in stride(from: 5, to: 0, by: -1) {
//    print(i)
//}


//--------------------------------

//functions with parameter
//func getMilk(howManyMilkCartons : Int) {
//    print("go to the shop")
//    print("buy \(howManyMilkCartons) cartons of milk")
//    print("pay $\(howManyMilkCartons * 2)")
//    print("come home")
//    print()
//}
//
//getMilk(howManyMilkCartons: 10)
//getMilk(howManyMilkCartons: 5)
//getMilk(howManyMilkCartons: 2)
//
//functions with both parameters & return value
//func getMilk(_ noOfMilkCartons : Int, _ moneyValue : Int) -> Int {
//    print("go to the shop")
//    print("buy \(noOfMilkCartons) cartons of milk")
//    let amountToBePaid : Int = noOfMilkCartons * 2
//    print("pay $\(amountToBePaid)")
//    print("come home")
//    return moneyValue - amountToBePaid
//}
//
//
//print("Change returned by the robot \(getMilk(4, 20))")

//nth term in Fibonacci Series using O(n) Space
func fib(_ n:Int) -> Int {
    var n0:Int = 0
    var n1:Int = 1
    var nth:Int = 0
    for _ in 1 ... n {
        nth = n1 + n0
        n0 = n1
        n1 = nth
    }
    
    return nth
}

print(fib(30))


for i in 1..<5 {
    print(i)
}

print()

for i in 1...10 where i % 2 == 0 {
    print(i)
}
