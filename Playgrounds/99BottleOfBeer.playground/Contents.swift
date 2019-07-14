import UIKit

func beerSong(noOfBeerBottles:Int) -> String {
    var song:String = ""
    
    for i in (1...noOfBeerBottles).reversed() {
        song += "\(i) bottles of beer on the wall, \(i) bottles of beer.\nTake one down and pass it around, \(i-1) bottles of beer on the wall.\n\n"
    }
    
    song += "No more bottles of beer on the wall, No more bottles of beer.\nGo to store buy some more, \(noOfBeerBottles) bottles of beer on the wall."
    return song
}

print(beerSong(noOfBeerBottles: 10))
