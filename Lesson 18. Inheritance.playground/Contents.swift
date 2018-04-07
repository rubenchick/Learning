//: A UIKit based Playground for presenting user interface
  
import UIKit
// Developers
//a).Найти информацию что такое наследование в Google, перефразировать эту информацию своими словами и вставить это в xcode в за коментрированом виде.
//b).Сделать то же самое с понятием Инкапсуляция
//c).И так же с понятием полиморфизм.
//
// Наследование - изготовление копии от одного объекта, с возможностью добавить функционал.
// Инкапсуляция - это заключение данных и методов обработки этих данных в единый компонент(объект) || ограничение доступа к ряду свойств и методов при наследовании
// Полиморфизм - Возможность использования разных объектов, через один интерфейс, в результате используется разная логика.

//1. Создать класс "люди", в этом классе 4 property - "имя", "рост", "вес", "пол", а также будет иметь метод "say(говорит)".
enum Sex : String{
    case Men = "Men"
    case Woman = "Women"
}
class Human {
    var name: String
    var height : Int
    var weight : Int
    var sex    : Sex
    func say() {
        print("What are you? ", terminator: "")
    }
    init(name: String,height : Int, weight : Int,sex : Sex)
    {
        self.name   = name
        self.height = height
        self.weight = weight
        self.sex    = sex
    }
}
//2. Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)" в каждом из этих классов.
class Cook: Human {
    override func say() {
        super.say()
        print("I am cook.")
    }
}
class Manager: Human {
    override func say() {
        super.say()
        print("I am manager.")
    }
}
class Wrestler: Human {
    override func say() {
        super.say()
        print("I am wrestler.")
    }
}

//3. Создать по одному объекту(экземпляру) каждого класса и объединить их в массив.
let cook     = Cook(name: "Oliver", height: 180, weight: 85, sex: .Men)
let manager  = Manager(name: "Oleg", height: 185, weight: 90, sex: .Men)
let wrestler = Wrestler(name: "Ivan", height: 190, weight: 115, sex: .Men)
var peopleInOurHome = [cook,manager,wrestler]

//4. В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)".
for person in peopleInOurHome {
    print("My name is \(person.name). I am a \(person.sex.rawValue). Height is \(person.height) and weight is \(person.weight)kg. ", terminator: "")
    person.say()
}

//5. Создать еще одного наследника от super Class, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам People.
//6. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.
//7. Вывести все это в обратном порядке(Google в помощь).
class Scientist: Human {
    var age: Int
    var married: Bool
    init(name: String, height : Int, weight : Int, sex : Sex, age: Int, married: Bool){
        self.age = age
        self.married = married
        super.init(name: name, height : height, weight : weight, sex : sex)
    }
}

let scientist = Scientist(name: "Isak", height: 175, weight: 75, sex: .Men, age: 56, married: true)
peopleInOurHome.append(scientist)
print("\nAdd new person")
for person in peopleInOurHome.reversed() {
    print("My name is \(person.name). I am a \(person.sex.rawValue). Height is \(person.height) and weight is \(person.weight)kg. ", terminator: "")
    if person is Scientist { //подглядел эту строчку
        print("My age is \(scientist.age) and I married is \(scientist.married). ", terminator: "")
        person.say()
        print("")
    }
    else {  person.say() }
}

//Для тех кто не просто учит программирование а хочет еще и работать.
//8. Создать класс "Марсианин" (не наследник класса people!) со своими собственными property (отличными от people) и методом "say" (отличным от people).
class Martian {
    var colorDerma : String
    var religian   : String
    func say(){
        print("Where are extraterrestrials ?")
    }
    init(colorDerma: String,religian :String){
        self.colorDerma = colorDerma
        self.religian = religian
    }
}
//9. Унаследоваться от него и создать пару других классов (Инопланетян) с переопределенным методом "say".
class Venerasun : Martian {
    override func say() {
        print("Only Venera")
    }
}
class Neptunsun : Martian {
    override func say() {
        print("Only Neptun")
    }
}
//10. Объединить всех people и Марсианинов) в один массив.
let venerasun = Venerasun(colorDerma : "Yellow", religian : "War")
let neptunsun = Neptunsun(colorDerma : "Green", religian : "Love")

enum Container {
    case HumanType(Human)
    case MartinType(Martian)
}

var arrayAllEntity: [Container] = [.HumanType(cook),.MartinType(venerasun),.MartinType(neptunsun),.HumanType(manager),.HumanType(wrestler),.HumanType(scientist)]

//11. В цикле выводить тип объекта (People или Марсианин) перед тем как выводить его свойства и вызывать метод

print("\nAdd new civilization")
for exemple in arrayAllEntity {
    switch exemple {
        case .HumanType(let person): do {
           // print("Integer: \(val.name)")
            print("I am a people. My name is \(person.name). I am a \(person.sex.rawValue). Height is \(person.height) and weight is \(person.weight)kg. ", terminator: "")
            if person is Scientist {
                print("My age is \(scientist.age) and I married is \(scientist.married). ", terminator: "")
                person.say()
                print("")
            }
            else {  person.say() }
        }
        case .MartinType(let person): do {
            print("I am a martin. My color derma is \(person.colorDerma). I believe in \(person.religian). ", terminator: "")
            person.say()
        }
    }
}

//Для тех кто дойдет до этого уровня будут достоин уважения!
//
//12. Поместить всех people в один массив, а Марсиан в другой массив (количество People и Марсиан должно быть разное)
var arrayHuman = [cook,manager,wrestler,scientist]
var arrayMartin = [venerasun,neptunsun]

//13. В одном цикле “for in” выводить People а потом Марсианина, доставая данные поочередно из двух разных массивов, если в одном из массивов объектов больше, то в конце должны выводиться только объекты этого массива (так как других уже нет)
print("\nPrint by rotation")
let length = arrayHuman.count > arrayMartin.count ? arrayHuman.count : arrayHuman.count
for i in 0...length-1 {
    
    if i <  arrayHuman.count {
        print("I am a people. My name is \(arrayHuman[i].name). I am a \(arrayHuman[i].sex.rawValue). Height is \(arrayHuman[i].height) and weight is \(arrayHuman[i].weight)kg. ", terminator: "")
        if arrayHuman[i] is Scientist {
            print("My age is \(scientist.age) and I married is \(scientist.married). ", terminator: "")
            arrayHuman[i].say()
            print("")
        }
        else {  arrayHuman[i].say() }
    }
    if i <  arrayMartin.count {
        print("I am a martin. My color derma is \(arrayMartin[i].colorDerma). I believe in \(arrayMartin[i].religian). ", terminator: "")
        arrayMartin[i].say()
    }
}

//Кто пройдет этот уровень станет настоящим Джедаем и сможет открывать двери на работу с ноги!:)
//
//14. Соединить Марсиан и People в одном массиве.
//15. Используя нужный метод array отсортировать массив (как результат будет другой массив).
//16. Сортировать так: сначала People, а потом Марсиане, люди отсортированы по имени, а Марсиане по марсианским кличкам.
//17. Требует разобраться с сортировкой.
print("\nSorded")

var sortedArray = arrayAllEntity.sorted { (elementOne, elementTwo) -> Bool in
    {
        switch (elementOne,elementTwo) {
            case (.HumanType(let personOne),.HumanType(let personTwo)): return personOne.name > personTwo.name ? false : true
            case (.HumanType( _),.MartinType( _)): return true
            case (.MartinType( _),.HumanType( _)): return false
            case (.MartinType(let personOne),.MartinType(let personTwo)): return personOne.colorDerma > personTwo.colorDerma ? false : true
        }
    }()
}

for exemple in sortedArray {
    switch exemple {
    case .HumanType(let person): do {
        // print("Integer: \(val.name)")
        print("I am a people. My name is \(person.name). I am a \(person.sex.rawValue). Height is \(person.height) and weight is \(person.weight)kg. ", terminator: "")
        if person is Scientist {
            print("My age is \(scientist.age) and I married is \(scientist.married). ", terminator: "")
            person.say()
            print("")
        }
        else {  person.say() }
        }
    case .MartinType(let person): do {
        print("I am a martin. My color derma is \(person.colorDerma). I believe in \(person.religian). ", terminator: "")
        person.say()
        }
    }
}

