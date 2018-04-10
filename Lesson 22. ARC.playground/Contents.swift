//: A UIKit based Playground for presenting user interface
  
import UIKit
class Person {
    var name: String
    var surName: String
    var age : UInt
    
    init (name: String, surName: String, age : UInt){
        self.name = name
        self.surName = surName
        self.age = age
    }
}

var person1 = Person(name: "Oleg", surName: "Popov", age: 25)
var person2 = Person(name: "Kazimir", surName: "Malevich", age: 34)
var person3 = Person(name: "Zakhar", surName: "Popov", age: 21)
var persons = [person1,person2,person3]

for person in persons {
    print(person.name,person.surName)
}
print("\n Сортируем")

// Компактный вариант записи
persons.sort { $0.surName == $1.surName ? $0.name < $1.name : $0.surName < $1.surName }

// Если, в одну строчку не понятно, то можно расписать так:
persons.sort { (p1, p2) -> Bool in
    if p1.surName == p2.surName {return p1.name < p2.name}
    else {
        return p1.surName < p2.surName
    }
}


persons.sort { $0.surName == $1.surName ? $0.name < $1.name : $0.surName < $1.surName }

for person in persons {
    print(person.name,person.surName)
}

