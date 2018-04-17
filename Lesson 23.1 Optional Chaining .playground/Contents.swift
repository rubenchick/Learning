//: A UIKit based Playground for presenting user interface
// Optional Chaining
import UIKit
import PlaygroundSupport

// Developers
//3) Сделать класс Люди, класса будут проперти родственники, соседи и тд (всё опционально).
enum TypeOfRelatives {
    case Sister, Brother, Uncle, Cusine
}

class People {
    var name: String
    var relatives : [Relatives]? = []
    var neigbors  : [Neigbors]? = []
    init(name: String) {
        self.name = name
    }
    
}

class Relatives {
    var type : TypeOfRelatives?
    var people : People?
    init(type : TypeOfRelatives?, people : People?) {
        self.type = type
        self.people = people
    }
}

class Neigbors {
    var name: People?
    init(name: People?){
        self.name = name
    }
}

//4)Создать нужно более 25 человек.
var people1 = People(name: "Ivan")
var people2 = People(name: "Oleg")
var people3 = People(name: "Lena")
var people4 = People(name: "Mariia")
var people5 = People(name: "Tatyana")
var people6 = People(name: "Max")
var people7 = People(name: "Petr")
var people8 = People(name: "Gleb")
var people9 = People(name: "Olga")
var people10 = People(name: "Alex")
var people11 = People(name: "Danila")
var people12 = People(name: "Hanna")
var people13 = People(name: "Vova")
var people14 = People(name: "Kira")
var people15 = People(name: "Yanna")

people1.relatives?.append(Relatives(type: TypeOfRelatives.Brother, people: people2))
people1.relatives?.append(Relatives(type: TypeOfRelatives.Sister, people: people3))
people1.relatives?.append(Relatives(type: TypeOfRelatives.Brother, people: people6))
people1.relatives?.append(Relatives(type: TypeOfRelatives.Brother, people: people10))
people1.relatives?.append(Relatives(type: TypeOfRelatives.Sister, people: people4))
people1.relatives?.append(Relatives(type: TypeOfRelatives.Uncle, people: people13))
people1.relatives?.append(Relatives(type: TypeOfRelatives.Uncle, people: people8))
people1.relatives?.append(Relatives(type: TypeOfRelatives.Cusine, people: people5))
people1.relatives?.append(Relatives(type: TypeOfRelatives.Cusine, people: people14))
people1.neigbors?.append(Neigbors(name: people12))
people1.neigbors?.append(Neigbors(name: people15))
//print(people1.neigbors?[1].name?.name)

//5)Посчитать, сколько у этого человека двоюродных Братьев, троюродных Сестёр, Теть, Дядь, И так далее
var (brother, sister, uncle, cusine) = (0,0,0,0)
for item in people1.relatives! {
    switch item.type {
    case .Brother?:   brother += 1
    case .Sister?:    sister += 1
    case .Uncle?:     uncle += 1
    case .Cusine?:    cusine += 1
    case .none:       break
    }
}
print("У \(people1.name) братьев \(brother), сестер \(sister), дядей - \(uncle), кузин - \(cusine) ")
//6)Создать касс животных и проперти - корова, коза, собака и тд
//7)Создать класс растения и проперти - трава, цветы и тд
//8)Положить их всех в массив и отсортировать по алфовиту и по классу - Люди - животные - растения

//print("No")
