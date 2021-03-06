import UIKit

func Square(number: Float) -> Float {
    let squared = number * number
    return squared
}

print(Square(number: 5))

func five() -> Int {
    return 5
}

print(five())

func fullName(first: String, last: String) -> String{
    return  "\(first) \(last)"
}

print(fullName(first: "Jayjay", last: "Venegas"))

func shout(input: String) -> String{
    return "\(input)!"
}

print(shout(input:"Hello"))

func numberName(number: Int) -> String?{
 if number <= 10 {
    let formatter = NumberFormatter()
    formatter.numberStyle = NumberFormatter.Style.spellOut
    
    let spellOutText = formatter.string(for: number)
    return (spellOutText)
}else {
    return (nil)
    }
}

print(numberName(number: 7))

