import UIKit

func loveCalculator(_ yourName : String, _ theirName : String) -> Int {
    let loveScore = Int(arc4random_uniform(101))
    if loveScore >= 80 {
        print("You both are made for each other")
    } else if loveScore >= 50 {
        print("\(theirName) has kept you in friend zone")
    } else if loveScore >= 30 {
        print("You serious about \(theirName)? you are just friends! DUH!!!")
    } else {
        print("Dayumn!! I'm sorry mate, you'll be forever alone. LOL!! : )")
    }
    return loveScore
}

print(loveCalculator("Anmol Jain", "Tarushi Guliani"), "%", separator:"")
