import UIKit

struct Person {
    let firstName: String
    let lastName: String
    let yearBorn: Int
}

var myList:[Person] = [
    Person(firstName: "Miles", lastName: "Malin", yearBorn: 2003),
    Person(firstName: "Matthew", lastName: "Silleti", yearBorn: 2002),
    Person(firstName: "Kobie", lastName: "Nikka", yearBorn: 2002)
]



func sortByLastName(a: Person, b: Person) -> Bool {
    if a.lastName == b.lastName {
        return a.firstName < b.firstName
    } else {
        return a.lastName < b.lastName
    }
}




let sortedList = myList.sorted(by: sortByLastName)


myList.sort(by: sortByLastName)


for item in sortedList {
    print(item.lastName)
}


let anotherSortedList = myList.sorted(by: {
    (a, b) in
    a.lastName < b.lastName
    } 
)




for item in anotherSortedList{
    print(item.lastName)
}

