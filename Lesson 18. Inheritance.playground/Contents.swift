//: A UIKit based Playground for presenting user interface
  
import UIKit
import Foundation
// Developers
//a).Найти информацию что такое наследование в Google, перефразировать эту информацию своими словами и вставить это в xcode в за коментрированом виде.
//b).Сделать то же самое с понятием Инкапсуляция
//c).И так же с понятием полиморфизм.
//
// Наследование - изготовление копии от одного объекта, с возможностью добавить функционал.
// Инкапсуляция - это заключение данных и методов обработки этих данных в единый компонент(объект) || ограничение доступа к ряду свойств и методов при наследовании
// Полиморфизм - Возможность использования разных объектов, через один интерфейс, в результате используется разная логика.

////1. Создать класс "люди", в этом классе 4 property - "имя", "рост", "вес", "пол", а также будет иметь метод "say(говорит)".
//enum Sex : String{
//    case Men = "Men"
//    case Woman = "Women"
//}
//class Human {
//    var name: String
//    var height : Int
//    var weight : Int
//    var sex    : Sex
//    func say() {
//        print("What are you? ", terminator: "")
//    }
//    init(name: String,height : Int, weight : Int,sex : Sex)
//    {
//        self.name   = name
//        self.height = height
//        self.weight = weight
//        self.sex    = sex
//    }
//}
////2. Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)" в каждом из этих классов.
//class Cook: Human {
//    override func say() {
//        super.say()
//        print("I am cook.")
//    }
//}
//class Manager: Human {
//    override func say() {
//        super.say()
//        print("I am manager.")
//    }
//}
//class Wrestler: Human {
//    override func say() {
//        super.say()
//        print("I am wrestler.")
//    }
//}
//
////3. Создать по одному объекту(экземпляру) каждого класса и объединить их в массив.
//let cook     = Cook(name: "Oliver", height: 180, weight: 85, sex: .Men)
//let manager  = Manager(name: "Oleg", height: 185, weight: 90, sex: .Men)
//let wrestler = Wrestler(name: "Ivan", height: 190, weight: 115, sex: .Men)
//var peopleInOurHome = [cook,manager,wrestler]
//
////4. В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)".
//for person in peopleInOurHome {
//    print("My name is \(person.name). I am a \(person.sex.rawValue). Height is \(person.height) and weight is \(person.weight)kg. ", terminator: "")
//    person.say()
//}
//
////5. Создать еще одного наследника от super Class, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам People.
////6. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.
////7. Вывести все это в обратном порядке(Google в помощь).
//class Scientist: Human {
//    var age: Int
//    var married: Bool
//    init(name: String, height : Int, weight : Int, sex : Sex, age: Int, married: Bool){
//        self.age = age
//        self.married = married
//        super.init(name: name, height : height, weight : weight, sex : sex)
//    }
//}
//
//let scientist = Scientist(name: "Isak", height: 175, weight: 75, sex: .Men, age: 56, married: true)
//peopleInOurHome.append(scientist)
//print("\nAdd new person")
//for person in peopleInOurHome.reversed() {
//    print("My name is \(person.name). I am a \(person.sex.rawValue). Height is \(person.height) and weight is \(person.weight)kg. ", terminator: "")
//    if person is Scientist { //подглядел эту строчку
//        print("My age is \(scientist.age) and I married is \(scientist.married). ", terminator: "")
//        person.say()
//        print("")
//    }
//    else {  person.say() }
//}
//
////Для тех кто не просто учит программирование а хочет еще и работать.
////8. Создать класс "Марсианин" (не наследник класса people!) со своими собственными property (отличными от people) и методом "say" (отличным от people).
//class Martian {
//    var colorDerma : String
//    var religian   : String
//    func say(){
//        print("Where are extraterrestrials ?")
//    }
//    init(colorDerma: String,religian :String){
//        self.colorDerma = colorDerma
//        self.religian = religian
//    }
//}
////9. Унаследоваться от него и создать пару других классов (Инопланетян) с переопределенным методом "say".
//class Venerasun : Martian {
//    override func say() {
//        print("Only Venera")
//    }
//}
//class Neptunsun : Martian {
//    override func say() {
//        print("Only Neptun")
//    }
//}
////10. Объединить всех people и Марсианинов) в один массив.
//let venerasun = Venerasun(colorDerma : "Yellow", religian : "War")
//let neptunsun = Neptunsun(colorDerma : "Green", religian : "Love")
//
//enum Container {
//    case HumanType(Human)
//    case MartinType(Martian)
//}
//
//var arrayAllEntity: [Container] = [.HumanType(cook),.MartinType(venerasun),.MartinType(neptunsun),.HumanType(manager),.HumanType(wrestler),.HumanType(scientist)]
//
////11. В цикле выводить тип объекта (People или Марсианин) перед тем как выводить его свойства и вызывать метод
//
//print("\nAdd new civilization")
//for exemple in arrayAllEntity {
//    switch exemple {
//        case .HumanType(let person): do {
//           // print("Integer: \(val.name)")
//            print("I am a people. My name is \(person.name). I am a \(person.sex.rawValue). Height is \(person.height) and weight is \(person.weight)kg. ", terminator: "")
//            if person is Scientist {
//                print("My age is \(scientist.age) and I married is \(scientist.married). ", terminator: "")
//                person.say()
//                print("")
//            }
//            else {  person.say() }
//        }
//        case .MartinType(let person): do {
//            print("I am a martin. My color derma is \(person.colorDerma). I believe in \(person.religian). ", terminator: "")
//            person.say()
//        }
//    }
//}
//
////Для тех кто дойдет до этого уровня будут достоин уважения!
////
////12. Поместить всех people в один массив, а Марсиан в другой массив (количество People и Марсиан должно быть разное)
//var arrayHuman = [cook,manager,wrestler,scientist]
//var arrayMartin = [venerasun,neptunsun]
//
////13. В одном цикле “for in” выводить People а потом Марсианина, доставая данные поочередно из двух разных массивов, если в одном из массивов объектов больше, то в конце должны выводиться только объекты этого массива (так как других уже нет)
//print("\nPrint by rotation")
//let length = arrayHuman.count > arrayMartin.count ? arrayHuman.count : arrayHuman.count
//for i in 0...length-1 {
//
//    if i <  arrayHuman.count {
//        print("I am a people. My name is \(arrayHuman[i].name). I am a \(arrayHuman[i].sex.rawValue). Height is \(arrayHuman[i].height) and weight is \(arrayHuman[i].weight)kg. ", terminator: "")
//        if arrayHuman[i] is Scientist {
//            print("My age is \(scientist.age) and I married is \(scientist.married). ", terminator: "")
//            arrayHuman[i].say()
//            print("")
//        }
//        else {  arrayHuman[i].say() }
//    }
//    if i <  arrayMartin.count {
//        print("I am a martin. My color derma is \(arrayMartin[i].colorDerma). I believe in \(arrayMartin[i].religian). ", terminator: "")
//        arrayMartin[i].say()
//    }
//}
//
////Кто пройдет этот уровень станет настоящим Джедаем и сможет открывать двери на работу с ноги!:)
////
////14. Соединить Марсиан и People в одном массиве.
////15. Используя нужный метод array отсортировать массив (как результат будет другой массив).
////16. Сортировать так: сначала People, а потом Марсиане, люди отсортированы по имени, а Марсиане по марсианским кличкам.
////17. Требует разобраться с сортировкой.
//print("\nSorded")
//
//var sortedArray = arrayAllEntity.sorted { (elementOne, elementTwo) -> Bool in
//    {
//        switch (elementOne,elementTwo) {
//            case (.HumanType(let personOne),.HumanType(let personTwo)): return personOne.name > personTwo.name ? false : true
//            case (.HumanType( _),.MartinType( _)): return true
//            case (.MartinType( _),.HumanType( _)): return false
//            case (.MartinType(let personOne),.MartinType(let personTwo)): return personOne.colorDerma > personTwo.colorDerma ? false : true
//        }
//    }()
//}
//
//for exemple in sortedArray {
//    switch exemple {
//    case .HumanType(let person): do {
//        // print("Integer: \(val.name)")
//        print("I am a people. My name is \(person.name). I am a \(person.sex.rawValue). Height is \(person.height) and weight is \(person.weight)kg. ", terminator: "")
//        if person is Scientist {
//            print("My age is \(scientist.age) and I married is \(scientist.married). ", terminator: "")
//            person.say()
//            print("")
//        }
//        else {  person.say() }
//        }
//    case .MartinType(let person): do {
//        print("I am a martin. My color derma is \(person.colorDerma). I believe in \(person.religian). ", terminator: "")
//        person.say()
//        }
//    }
//}

// Corse
//1. Создайте базовый класс артист с "именем", "фамилией" и методом "выступление". У каждого дочернего класса свой метод "выступление" (актер - играет, клоун - развлекает, танцор - танцует), включающее в себя представление участника, в каком жанре выступление и действие (можно просто вывод строки). Создайте дочерний класс "художник", который не хочет, чтобы его называли вы и всегда ставит другое имя, когда вы пытаетесь его назвать. Положить все экземпляры в один массив и пройдясь по нему вызвать у всех выступление.

//class Artist {
//    var firstname    : String
//    var sername : String
//    func action ()-> String {
//        return "What i can?"
//    }
//    init(firstname : String, sername : String) {
//        self.firstname = firstname
//        self.sername   = sername
//    }
//}
//
//class Actor : Artist {
//    override func action ()-> String {
//        return "My name is " + self.firstname + " " + self.sername + ". I am playing"
//    }
//}
//
//class Clown : Artist {
//    override func action ()-> String {
//        return "My name is " + self.firstname + " " + self.sername + ". I am entertaining"
//    }
//}
//
//class Dancer : Artist {
//    override func action ()-> String {
//        return "My name is " + self.firstname + " " + self.sername + ". I am dancing"
//    }
//}
//
//class Painter : Artist {
//
//    override var firstname: String {
//        set {
//            super.firstname = "Black"
//        }
//        get {
//            return super.firstname
//        }
//    }
//
//    override var sername: String {
//        set {
//            super.sername = "Square"
//        }
//        get {
//            return super.sername
//        }
//    }
//
//    override func action ()-> String {
//        return "My name is " + self.firstname + " " + self.sername + ". I am painting"
//    }
//
//    override init (firstname: String, sername: String){
//
//        super.init(firstname: firstname, sername: sername)
//        self.firstname = "Black"
//        self.sername = "Square"
//    }
//}
//
//let actor = Actor(firstname: "Alex", sername: "Serebrykov")
//let clown = Clown(firstname: "Uriy", sername: "Nikulin")
//let dancer = Dancer(firstname: "Migel", sername: "Shesteperov")
//let painter = Painter(firstname: "Kazimir", sername: "Malevich")
//let array = [actor,clown,dancer,painter]
//for person in array {
//    print(person.action())
//}

//2. Создать базовый клас "транспортное средство" и добавить три разных проперти: скорость, вместимость и стоимость одной перевозки (computed). Создайте несколько дочерних класов и переопределите их компютед проперти у всех. Создайте класс самолет, корабль, вертолет, машина и у каждого по одному объекту. В компютед пропертис каждого класса напишите свои значения скорости, вместимости, стоимости перевозки. + у вас должен быть свой метод который считает сколько уйдет денег и времени что бы перевести из пункта А в пункт В определенное количество людей с использованимем наших транспортных средств. Вывести в кольсоль результат (как быстро сможем перевести, стоимость, количество перевозок).
//Используем полиморфизм

//2. Базовый класс - "транспортное средство"; свойства - скорость, вместимость, стоимость одной перевозки (все computed properties). Несколько дочерних классов (самолет, корабль, вертолет, машина, поезд) с переопределенными свойствами (для каждого своя скорость вместимость и стоимость). Создать по одному объекту каждому дочернему классу. У всех есть метод, который что-то расчитывает (скорость, расстояние, количество пассажиров), конкретно сколько уйдет денег и времени, чтобы перевести определенное количество человек из пункта А в пункт В. При перевозке 100 и 1000 человек ответить на следующие вопросы:
//-Как быстро мы сможем это сделать и каким транспортом?
//-Стоимость всех перевозок и количество?
//-Какой транспорт быстрее справится и какой более выгодный?

//class Vehicle {
//    var speed    : Int  {
//        return 0
//    }
//    var capacity : Int  {
//        return 0
//    }
//    var cost     : Int  { // in one hour
//        return 0
//    }
//
//    func transportation(countPeople: Int, distanse: Int) -> (Int,Double,Int) { //стоимость, время и количество транспорта
//        var howLong : Double = 0.0
//        var time  = 1 // количество транспорта
//        howLong = (Double(distanse)/Double(self.speed))
//        if self.capacity <= countPeople {
//            time = Int((Double(countPeople)/Double(self.capacity)).rounded(.up))
//        }
//
//        return (Int(Double(self.cost) * Double(time) * howLong), howLong , time)
//    }
//}
//
//class Plane : Vehicle {
//    override var speed : Int {
//        return 850
//    }
//    override var capacity : Int {
//        return 200
//    }
//    override var cost : Int {
//        return 400000
//    }
//}
//
//class Ship : Vehicle {
//    override var speed : Int {
//        return 25
//    }
//    override var capacity : Int {
//        return 400
//    }
//    override var cost : Int {
//        return 20000
//    }
//
//}
//
//class Helicopter : Vehicle {
//    override var speed : Int {
//        return 350
//    }
//    override var capacity : Int {
//        return 8
//    }
//    override var cost : Int {
//        return 180000
//    }
//}
//
//class Car : Vehicle {
//    override var speed : Int {
//        return 70
//    }
//    override var capacity : Int {
//        return 4
//    }
//    override var cost : Int {
//        return 500
//    }
//}
//
//class Train : Vehicle {
//    override var speed : Int {
//        return 100
//    }
//    override var capacity : Int {
//        return 636
//    }
//    override var cost : Int {
//        return 79500
//    }
//}
//
//var howTime : Double = 0
//var cost : Int = 0
//var time : Int = 0
//
//var arrayVenicle = [Plane(),Ship(),Helicopter(),Car(),Train()]
//
//
//func printVenicle (countPeople: Int, tripDistanse: Int){
//
//    print("\nПеревозка \(countPeople) человек на \(tripDistanse) км\n")
//    for venicle in arrayVenicle {
//        (cost,howTime,time) = venicle.transportation(countPeople: countPeople, distanse: tripDistanse)
//        print("Стоимость перевозки",cost,"т.р. Время - ",String(format: "%.2f", howTime),"часа(ов). Нужна(о) ",time,"еденица(ы) техники.",type(of: venicle))
//    }
//
//    arrayVenicle.sort { (venicle1, venicle2) -> Bool in
//            return venicle1.transportation(countPeople: countPeople, distanse: tripDistanse).1 < venicle2.transportation(countPeople: countPeople, distanse: tripDistanse).1 ? true : false
//    }
//    print("Быстрее всего доехать на \(String(describing: type(of: arrayVenicle[0])))")
//
//    arrayVenicle.sort { (venicle1, venicle2) -> Bool in
//              return venicle1.transportation(countPeople: countPeople, distanse: tripDistanse).0 < venicle2.transportation(countPeople: countPeople, distanse: tripDistanse).0 ? true : false
//
//    }
//    print("Дешевле всего доехать на \(String(describing: type(of: arrayVenicle[0])))")
//}
//
//printVenicle (countPeople: 100, tripDistanse: 1500)
//printVenicle (countPeople: 1000, tripDistanse: 500)


//3. Есть 5 классов: люди, крокодилы, обезьяны, собаки, жирафы. (в этом задании вы будете создавать не дочерние классы, а родительские и ваша задача создать родительский таким образом, что бы группировать эти 5).
//- Создайте по пару объектов каждого класса.
//- Посчитайте присмыкающихся (создайте масив, поместите туда присмыкающихся и скажите сколько в нем объектов)
//- Сколько четвероногих?
//- Сколько здесь животных?
//- Сколько живых существ?

//3. Пять классов: люди, собаки, жирафы, обезьяны и крокодилы. Сделайте по парочке объектов каждого класса. Создать такой родительский класс, который будет группировать их. Создать массив с пресмыкающимися и посчитать их количество, потом также создать массив и посчитать сколько четвероногих, животных и живых. Массивы не содержат тип Any.

enum Gender {
    case Men
    case Women
}
class GodIsCreatures {
    var type: String
    var gender : Gender
    static var count: Int = 0
    init(type: String, gender : Gender){
        self.type = type
        self.gender = gender
    }
}

class People : GodIsCreatures {
    var age : Int
    init (type: String,gender : Gender,age : Int){
        self.age = age
        super.init(type: type,gender: gender)
        GodIsCreatures.count += 1
    }
}

class Dog : GodIsCreatures{}
class Giraffe : GodIsCreatures{}
class Monkey : GodIsCreatures {}
class Crocodile : GodIsCreatures { }

var arrayСreature = [People(type: "Neanderthal", gender: .Men, age: 33),People(type: "FirstWomen", gender: .Women, age: 31),Dog(type: "Kolly", gender: .Men),Dog(type: "Labrador", gender: .Men),Giraffe(type: "Africa", gender: .Women),Giraffe(type: "Asia", gender: .Women),Monkey(type: "Mokaka", gender: .Women),Monkey(type: "Shimpanze", gender: .Men),Crocodile(type: "Alligator", gender: .Women),Crocodile(type: "Green", gender: .Men)]

var fourLegged = 0
var animals = 0
var godIsCreatures = 0
for сreature in arrayСreature {
    switch сreature {
    case is People: godIsCreatures += 1
    case is Dog: do {
        godIsCreatures += 1
        animals += 1
        fourLegged += 1
        }
    case is Giraffe: do {
        godIsCreatures += 1
        animals += 1
        fourLegged += 1
        }
    case is Monkey: do {
        godIsCreatures += 1
        animals += 1
        }
    case is Crocodile: do {
        godIsCreatures += 1
        animals += 1
        fourLegged += 1
        }
    default:
        break
    }
}
print("Всего живых существ \(arrayСreature.count)")
print("Четвероногих - \(fourLegged)")
print("Животных - \(animals)")
print("Живыъ существ - \(godIsCreatures)")

