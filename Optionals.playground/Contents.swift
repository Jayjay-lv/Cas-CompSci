// This is a function that returns a String? (or Optional<String>). You'll use it below.
func getFirstVowel(in name: String) -> String? {
    let vowels: [Character] = ["a", "e", "i", "o", "u", "y"]
    for char in name {
        if vowels.contains(char) {
            return String(char)
        }
    }
    return nil
}

// TODO: Change yourName to your name.
let yourName = "Jayjay"

let firstVowel = getFirstVowel(in: yourName)

// TODO: Assign the underlying value of firstVowel to unwrappedVowelOne, unwrappedVowelTwo, and unwrappedVowelThree. Use a different method of unwrapping firstVowel each time.
// v-- Insert code below here --v
var unwrappedVowelOne: String? = firstVowel

if unwrappedVowelOne != nil {
    print("The first vowel in '\(yourName)' is '\(unwrappedVowelOne!)'.")
}

//var unwrappedVowelTwo: String

if let unwrappedVowelTwo = String??(firstVowel) {
  print("The first vowel in '\(yourName)' is '\(unwrappedVowelTwo!)'.")
}

if let unwrapped = getFirstVowel(in: yourName) {
    unwrappedVowelOne = unwrapped
} else {
    unwrappedVowelOne = "their are no vowels in your name"
}

let unwrappedVowelThree: String = (getFirstVowel)(in: yourName) ?? "their were no english vowels in your name"


// ^-- Insert code above here --^


print("The first vowel in '\(yourName)' is '\(unwrappedVowelThree)'.")
