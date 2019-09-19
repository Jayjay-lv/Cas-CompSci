import UIKit

func classifyProduct(int1: Int, int2: Int) -> String{
    let NewInt = int1 * int2
    
    if NewInt < 0 {
        return ("negative")
    }
    
    else if NewInt == 0 {
            return("zero")
    }
    
    else if NewInt <= 30{
        return("small")
    }
    
    else if NewInt >= 30{
        return("big")
    }
    
    else {
        return("nothing")
    }
}

print(classifyProduct(int1: -4, int2: 4))
