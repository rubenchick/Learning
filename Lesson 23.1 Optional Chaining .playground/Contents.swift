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
    var relatives : Relatives? = Relatives()
    var neigbors  : Neigbors? = Neigbors(name: nil)
}

class Relatives {
    var type : TypeOfRelatives?
    var people : People?
}

class Neigbors {
    var name: [People]?
    init(name: [People]?){
        self.name = name
    }
}

//4)Создать нужно более 25 человек.
var people1 = People()
var people2 = People()
var people3 = People()
var people4 = People()
var people5 = People()
people1.relatives?.people = people2
people1.relatives?.type = TypeOfRelatives.Brother
people1.relatives(
//people1.neigbors?.name = ["Pushkin","Lermontov"]
//5)Посчитать, сколько у этого человека двоюродных Братьев, троюродных Сестёр, Теть, Дядь, И так далее

//6)Создать касс животных и проперти - корова, коза, собака и тд
//7)Создать класс растения и проперти - трава, цветы и тд
//8)Положить их всех в массив и отсортировать по алфовиту и по классу - Люди - животные - растения

print("Yes")
