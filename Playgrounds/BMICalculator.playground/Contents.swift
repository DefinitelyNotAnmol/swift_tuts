import UIKit

func BMICalculator(weight : Float, height : Float) -> Float {
    let BMI:Float = weight / (height * height)
    if BMI >= 25.0 && BMI < 35.0 {
        print("Stop eating that junk food you fat ass! Bitch you are well over weight")
    } else if BMI >= 18.0 && BMI < 25.0{
        print("Mate you got an fine piece of ass! Kuddos to you")
    } else if BMI >= 10.0 && BMI < 18.0{
        print("Are you even alive? You better start eating asshole, in the end we all will die but it's better to not die hungry")
    } else {
        print("Something's fishy over here!\nBitch you dyslexic or what, can't you enter correct details?")
    }
    
    return BMI
}

print(BMICalculator(weight: 583, height: 1.67))
