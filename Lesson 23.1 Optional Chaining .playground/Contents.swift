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
//print("У \(people1.name) братьев \(brother), сестер \(sister), дядей - \(uncle), кузин - \(cusine) ")

//6)Создать касс животных и проперти - корова, коза, собака и тд
class Animal {
    var cow  : Cow?  = nil
    var goat : Goat? = nil
    var dog  : Dog?  = nil
}
class Cow {
    var name: String
    var color: String
    init(name: String,color: String){
        self.name = name
        self.color = color
    }
    
}
class Goat {
    var name: String = ""
    var color: String = ""
    init(name: String,color: String){
        self.name = name
        self.color = color
    }
}
class Dog{
    var name: String = ""
    var type: String = ""
    init(name: String,type: String){
        self.name = name
        self.type = type
    }
}

//7)Создать класс растения и проперти - трава, цветы и тд
class Plants {
    var herb    : Herb? = nil
    var flowers : Flowers? = nil
}

class Flowers{
    var name: String = ""
    var color: String = ""
    init(name: String,color: String){
        self.name = name
        self.color = color
    }
}
class Herb{
    var name: String = ""
    var type: String = ""
    init(name: String,type: String){
        self.name = name
        self.type = type
    }
}

//8)Положить их всех в массив и отсортировать по алфовиту и по классу - Люди - животные - растения
var animal1 = Animal()
var animal2 = Animal()
var animal3 = Animal()
var animal4 = Animal()
var animal5 = Animal()
var animal6 = Animal()
var plants1 = Plants()
var plants2 = Plants()
var plants3 = Plants()
var plants4 = Plants()
var plants5 = Plants()
var plants6 = Plants()
animal1.cow = Cow(name: "Murka", color: "Black")
animal2.dog = Dog(name: "Graf", type: "Kolli")
animal3.cow = Cow(name: "Boris",color: "Brown")
animal4.goat = Goat(name: "Zorka",color: "White")
animal5.dog = Dog(name: "Jack", type: "Setter")
animal6.dog = Dog(name: "Nick", type: "Lobradog")
plants1.flowers = Flowers(name: "Lutik", color: "Blue")
plants2.herb    = Herb(name: "Camada Green", type: "Decoration")
plants3.flowers = Flowers(name: "Mimoza", color: "Red")
plants4.flowers = Flowers(name: "Tilpan", color: "Yellow")
plants5.herb    = Herb(name: "Pheniza", type: "Eating")
plants6.flowers = Flowers(name: "Rose", color: "Dack Red")

var array : [AnyObject]
array = [people1,people2,people3,people4,animal1,plants1,animal2,plants2,animal3,plants3,
         animal4,plants4,animal5,plants5,animal6,plants6,people5,people6,people7,people8,
         people9,people10,people11,people12,people13,people14,people15]

func printArray(_ array : [AnyObject])->() {
    for item in array {
        if let temp = item as? People {
            print("People - \(temp.name)")
        }
        if let temp2 = item as? Animal {
            print(temp2.cow != nil ? "Animal Cow - \(temp2.cow!.name)" : temp2.goat != nil ? "Animal Goat - \(temp2.goat!.name)" : "Animal Dog - \(temp2.dog!.name)" )
        }
        if let temp3 = item as? Plants {
            print(temp3.flowers != nil ? "Plants flowers - \(temp3.flowers!.name)" : "Plants herb- \(temp3.herb!.name)")
        }
    }
}
print("Unsorted \n")
printArray(array)

array.sort {
    switch ($0, $1) {
    case (is People, is People) : do {
        if let temp1 = $0 as? People {
            if let temp2 = $1 as? People {
                return temp1.name > temp2.name ? false : true
            }
            else { return false }
        }
        else { return  false }
        }
    case (is People, _)         : return true
    case (is Animal, is People) : return false
    case (is Animal, is Plants) : return true
    case  (is Animal, is Animal) : do {
        var name1 = ""
        var name2 = ""
        if let temp1 = $0 as? Animal {
            name1 = temp1.cow?.name ?? (temp1.dog?.name ?? (temp1.goat?.name)!)
        }
        if let temp2 = $1 as? Animal {
            name2 = temp2.cow?.name ?? (temp2.dog?.name ?? (temp2.goat?.name)!)
        }
        return name1 > name2 ? false : true
        }
    case  (is Plants, is Plants) : do {
        var name1 = ""
        var name2 = ""
        if let temp1 = $0 as? Plants {
            name1 = temp1.flowers?.name ?? (temp1.herb?.name)!
        }
        if let temp2 = $1 as? Plants {
            name2 = temp2.flowers?.name ?? (temp2.herb?.name)!
        }
        return name1 > name2 ? false : true
        }
    case (is Plants,  _) : return false
        
    default:
        return false
    }

}

print("\nSorted \n")
printArray(array)

