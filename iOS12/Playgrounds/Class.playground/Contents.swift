import UIKit

class Employee {
    var name:String = ""
    var age:Int = 0

    init(_ name:String, _ age:Int) {
        self.name = name
        self.age = age
    }
    
    func Print() {
        print("\(name) is \(age) years old")
    }
}

var emp1:Employee = Employee("Anmol Jain", 20)
emp1.Print()
