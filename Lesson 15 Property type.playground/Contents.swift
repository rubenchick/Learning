//: A UIKit based Playground for presenting user interface
  
import UIKit

//1. Создать структуру “Описание файла” содержащую свойства:
//- путь к файлу
//- имя файла
//- максимальный размер файла на диске
//- путь к папке, содержащей этот файл
//- тип файла (скрытый или нет)
//- содержимое файла (можно просто симулировать контент)
//
//Главная задача - это использовать правильные свойства там, где нужно, чтобы не пришлось хранить одни и те же данные в разных местах и т.д. и т.п.
//
//1. Создать структуру “Описание файла” содержащую свойства:
enum Type : String {
    case Hidden, Visible
}
struct File {
    var pathToFile     : String {
        return pathToFolder + "/" + name
    }
    var name           : String
    static let maxSize : Int = 1024
    var pathToFolder   : String
    var type           : Type
    lazy var content   : String = "config"
}
var file1 = File(name: "doc.txt", pathToFolder : "/program/lunix", type: .Visible, content: nil)
file1
file1.content
file1
print(file1.pathToFile)

//2. Создайте энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение должен иметь соответствующее 3 байтное представление цвета. Добавьте в этот энум 3 свойства типа: количество цветов в гамме, начальный цвет и конечный цвет.
//
enum Color : Int {
    static var countColor  = 7
    static var beginColor  = Color.AirForceBlue
    static var endColor    = Color.Denim
    case AirForceBlue = 0x5d8aa8
    case Amber        = 0x5ffbf00
    case Azure        = 0x007fff
    case Red          = 0xff0000
    case BondiBlue    = 0x0095b6
    case Cerulean     = 0x007ba7
    case Denim        = 0x1560bd
}
var color = Color.BondiBlue
print(Color.beginColor)
print(Color.countColor)
print(color.rawValue)

//3. Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
//- минимальный и максимальный возраст каждого объекта
//- минимальную и максимальную длину имени и фамилии
//- минимально возможный рост и вес
//- самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса
//3. Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
class Human {
    static var minimumAge = 16
    static var maximumAge = 80
    static var minimumString = 2
    static var maximumString = 20
    static var minimumHeight = 130
    static var minimumWeight = 40
    static var count = 0
    var firstName : String {
        didSet {
            if (firstName.count < Human.minimumString) || (firstName.count > Human.maximumString) { firstName = oldValue }
        }
    }
    var secondName: String {
        didSet {
            if (secondName.count < Human.minimumString) || (secondName.count > Human.maximumString) { secondName = oldValue }
        }
    }
    var age       : Int {
        didSet {
            if (age < Human.minimumAge) || (age > Human.maximumAge) { age = oldValue }
        }
    }
    var height    : Int {
        didSet {
            if height < Human.minimumHeight { height = oldValue }
        }
    }
    var weight    : Int {
        didSet {
            if weight < Human.minimumWeight { weight = oldValue }
        }
    }
    init (_ firstName : String,_ secondName: String,_ age : Int,_ height : Int,_ weight : Int) {
        self.firstName = firstName
        self.secondName = secondName
        self.age = age
        self.height = height
        self.weight = weight
        Human.count += 1
    }
}
var studentOne = Human("Alex", "Navalny", 42, 185, 95)
print(studentOne.firstName)
print(Human.count)
studentOne.height = 155
print(studentOne.height)
studentOne.height = 55
print(studentOne.height)
var studentTwo = Human("Alex", "Navalny", 42, 185, 95)
print(Human.count)

