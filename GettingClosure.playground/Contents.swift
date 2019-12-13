import Foundation

let foo:(Int, Int, Int) -> Int = {
    (x: Int, y: Int, z: Int) in
    return x + y + z
}


print(foo(5, 2, 3))
