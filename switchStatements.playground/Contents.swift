import UIKit

let x = 1

switch x {
    case 0:
    print("x is zero")
    case 1:
    print("x is 1")
    case 2:
    print("x is 2")
default:
    print("x is something else")
}



enum SchoolDay {
    case aDay
    case bDay
    case cDay
}



var today: SchoolDay = SchoolDay.bDay


switch today{
    case .aDay:
        print("Cas comp schi is second")
    case .bDay:
        print("cas comp is first period")
    case .cDay:
        print("no comp sci today")

}
