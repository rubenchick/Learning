//: A UIKit based Playground for presenting user interface
  
import UIKit
import Foundation
// Development
////1. Повторите что было в уроке самостоятельно по памяти.
////2. Зайти в документацию и проработать и разобрать все примеры на эту тему.
////3. Создать клас в котором будет 3 проперти мама Папа и дети . Создать sabscript и упорядочить их по индексу.
////4. Создать Индекс который будет принимать число умножать его на 100 и делить на 2.
////5.Создать свой subscript у которого внутри есть оператор if else.
////6. Создать класс человек и в нем 3 проперти имя , возраст пол .
////7. Создать ещё 2 класса которые наследуються от класса человек и переопределить методы и свойства .
////8. Создать дикшинари который хранит все типы данных которые есть а ключ должен быть только строка
////( воспользоваться enum для типов данных)
//
//// Тренировка
//struct Family {
//    var father = "Ivan"
//    var mother = "Olga"
//    var kids = ["Pert","Fedr","Max"]
//    var count: Int  {
//     return 2 + kids.count
//    }
//    subscript (index: Int)->String {
//        get {
//            switch index {
//            case 0: return father
//            case 1: return mother
//            case 2...(kids.count+1): return kids[index-2]
//            default: return "55"
//            }
//        }
//            set {
//                switch index {
//                    case 0: return father = newValue
//                    case 1: return mother = newValue
//                    case 2...(kids.count+1): return kids[index-2] = newValue
//                    default: break
//                }
//            }
//    }
//    subscript (index: Int, suffix:String) -> String {
//        switch index {
//        case 0: return father + " " + suffix
//        case 1: return mother + " " + suffix
//        case 2...(kids.count+1): return kids[index-2]  + " " + suffix
//        default: return "55"
//        }
//    }
//
//}
//var family = Family()
//family[0]
//family[0] = "Denis"
//family[0]
//family[3]
//family[0,"home"]
//family.count
//family.kids.append("Zina")
//family.count
//family[5]
//family[5] = "Jack"
//family[5]
//family.kids
//
////3. Создать клас в котором будет 3 проперти мама Папа и дети . Создать sabscript и упорядочить их по индексу.
//
//
////4. Создать Индекс который будет принимать число умножать его на 100 и делить на 2.
//struct Multiplication {
//    subscript (index: Int)-> Int {
//        return index * 100 / 2
//    }
//}
//var mult = Multiplication()
//mult[5]
//
////5.Создать свой subscript у которого внутри есть оператор if else.
//struct DevisionTwo {
//    subscript (index: Int)-> String {
//        if (index % 2) == 0 { return "Делится без остатка"}
//        else { return "Делится c остатком"}
//    }
//}
//var dev = DevisionTwo()
//print(dev[5])
//
////6. Создать класс человек и в нем 3 проперти имя , возраст пол .
//class Human {
//    var name : String
//    var age  : Int
//    var sex : Bool {
//        get {
//            return  true
//        }
//        set {
//            self.sex = newValue
//        }
//    }
//    func printResume() {
//        print("Житель земли \(name)")
//    }
//    init(name : String, age  : Int, sex : Bool) {
//        self.name = name
//        self.age = age
//    }
//}
//var human = Human(name: "Dmitry", age: 68,sex: true)
//print(human.printResume())
//
////7. Создать ещё 2 класса которые наследуються от класса человек и переопределить методы и свойства .
//class Student: Human {
//    var nameOfUnuversaty : String
//    override var sex : Bool {
//        get {
//            return  true
//        }
//        set {
//            self.sex = newValue
//        }
//    }
//    override func printResume() {
//        print("Житель земли \(name) учился в \(nameOfUnuversaty)")
//    }
//    init(name : String, age  : Int, sex  : Bool,nameOfUnuversaty : String) {
//        self.nameOfUnuversaty = nameOfUnuversaty
//        super.init(name: name, age: age, sex: sex)
//    }
//}
//var student = Student(name: "Dmitry", age: 68, sex: true, nameOfUnuversaty: "SSAU")
//print(student.printResume())
//
////8. Создать дикшинари который хранит все типы данных которые есть а ключ должен быть только строка
////( воспользоваться enum для типов данных)
//enum TypeValue : String {
//    case Int, String, Bool, Float, Double, Char
//}
//struct DataType {
//    var model : [String:TypeValue] = ["Int":TypeValue.Int]
//    subscript (key: String)->TypeValue {
//        get {
//            return model[key]!
//        }
//        set {
//            model[key] = newValue
//        }
//    }
//}
//var dataType = DataType()
//print(dataType["Int"])
//dataType["Float"] = .Float
//print(dataType["Float"])

//  ДЗ Course
//1. Создайте тип шахматная доска.
//2. Добавьте сабскрипт, который выдает цвет клетки по координате клетки (буква и цифра).
//3. Если юзер ошибся координатами - выдавайте нил

//struct ChessBoard {
//    let dict = ["a": 1,"b":2,"c":3,"d":4,"e":5,"f":6,"g":7,"h":8]
//    subscript (column: String,row: Int)->() {
//        let point = dict[column.lowercased()] ?? nil
//        if (point == nil)  || (row>8) || (row < 1 ) { return print("nil") }
//        else {print(point! % 2 == 0 ? (row % 2 == 0 ? "Black" : "White") : (row % 2 == 1 ? "Black" : "White") )}
//    }
//}
//var chessBoard = ChessBoard()
//chessBoard["e",1]

//Крестики нолики (Средний уровень)
//1. Создать тип, представляющий собой поле для игры в крестики нолики
//На каждой клетке может быть только одно из значений: Пусто, Крестик, Нолик
//Добавьте возможность красиво распечатывать поле
//2. Добавьте сабскрипт, который устанавливает значение клетки по ряду и столбцу,
//причем вы должны следить за тем, чтобы программа не падала если будет введен не существующий ряд или столбец.
//3. Также следите за тем, чтобы нельзя было устанавливать крестик либо нолик туда, где они уже что-то есть. Добавьте метод очистки поля.
//4. Если хотите, добавте алгоритм, который вычислит победителя

//Морской бой (Тяжелый уровень)
//1. Создайте тип корабль, который будет представлять собой прямоугольник. В нем может быть внутренняя одномерная система координат (попахивает сабскриптом). Корабль должен принимать выстрелы по локальным координатам и вычислять когда он убит

struct Boat {
    var bodyBoat : [Bool]=[] //true - попали в данную часть
    func isKilled()->Bool {
        var killed = true
        for emply in self.bodyBoat {
            if !emply { killed = false }
        }
        return killed
    }
    mutating func createBoat(length: Int) {
        bodyBoat = []
        for _ in 1...length {
            bodyBoat.append(false)
        }
        
    }
    subscript(index: Int) -> Bool {
        get {
            return bodyBoat[index-1]
        }
        set {
            bodyBoat[index-1] = true
            print(isKilled() ? "- потоплен" : "- ранен")
        }
    }
}

//2. Создайте двумерное поле, на котором будут располагаться корабли врага. Стреляйте по полю и подбейте вражеский четырех трубник :)
//3. Сделайте для приличия пару выстрелов мимо, красивенько все выводите на экран :)

enum Position {
    case Vertical
    case Horizontal
}
struct BattleField{
    let dict = ["a": 1,"b":2,"c":3,"d":4,"e":5,"f":6,"g":7,"h":8, "i": 9, "j":10]
    let dictReverse = [1:"a",2:"b",3:"c",4:"d",5:"e",6:"f",7:"g",8:"h",9: "i",10: "j"]
    
    var field : [String:String]=[:] // Поле битвы
    var boats : [String:Boat]=[:]   // Информация о кораблях
    
    mutating func createBoat(column: String, row: Int, length: Int, position: Position) {
        var newBoat = Boat()
        newBoat.createBoat(length: length)
        boats[column+String(row)] = newBoat
        
        // внесем данные в словарь field
        switch position {
            case .Horizontal: do {
                for i in 0...length-1 {
                    field[column.lowercased()+String(row+i)] = column.lowercased()+String(row)
                }
            }
            case .Vertical: do {
                let startColumn = dict[column.lowercased()]!
                for i in 0...length-1 {
                    field[dictReverse[startColumn+i]!+String(row)] = column.lowercased()+String(row)
                }
            }
        }
    }
    
    // определим номер модуля
    func numberModul (_ startBoatPosition: String,_ nowPosition: String)-> Int{
        
        let startColumn = String(startBoatPosition[startBoatPosition.startIndex])
        var tempString = startBoatPosition
        let startRow = String(tempString.remove(at: tempString.index(before: tempString.endIndex)))
        
        let nowColumn = String(nowPosition[nowPosition.startIndex])
        tempString = nowPosition
    
        let nowRow = String(tempString.remove(at: tempString.index(before: tempString.endIndex)))

        // одинаковый столбец

        if startColumn == nowColumn { return Int(nowRow)!  - Int(startRow)!  + 1 }
        // одинаковая строка
        if startRow == nowRow       { return dict[nowColumn]! - dict[startColumn]! + 1

        }
        return 0
    }
    
    func printField() {
        print("  1 2 3 4  5 6 7 8 9 10")
        for j in 1...10 {
            print(dictReverse[j]!, terminator:"")
            for i in 1...10 {
                if field[dictReverse[j]!+String(i)] != nil {
                    
                    if field[dictReverse[j]!+String(i)] != "shooted" {
                        // Обращаюсь в номер отсека в корабле и узнаю попадали в него или нет
                        if boats[field[dictReverse[j]!+String(i)]!]![numberModul(field[dictReverse[j]!+String(i)]!, dictReverse[j]!+String(i))] == true { print("🔴", terminator:"") }
                        else { print("⚫️", terminator:"") }
                    }
                    else { print("❌", terminator:"") }
                }
                else { print("🔹", terminator:"") }
            }
            print("")
        }
        print("")
    }
    
    subscript(column: String, row: Int) -> String {
        get {
            return field[column+String(row)] != nil ? "Уже стреляли": "Еще не стреляли"
        }
        set {
            if field[column+String(row)] == nil {
                field[column.lowercased()+String(row)] = "shooted"
                print("  \(column.lowercased()+String(row)) - мимо")
            }
            else {
                // отмечаем  в базе кораблей
                let nameBoard = field[column.lowercased()+String(row)]!
                let nowPoint = column.lowercased()+String(row)
                let number = numberModul(nameBoard,nowPoint)
                print("   \(column.lowercased()+String(row))", terminator:"")
                boats[nameBoard]![number] = true
            }
            printField()
        }
    }
}

var war = BattleField()

war.createBoat(column: "b", row: 3, length: 4, position: .Vertical)
war.createBoat(column: "i", row: 3, length: 5, position: .Horizontal)
war.printField()

war["h",5] = "Fire"
war["h",7] = "Fire"
war["i",5] = "Fire"
war["i",6] = "Fire"
war["b",3] = "Fire"
war["d",3] = "Fire"
war["e",3] = "Fire"
war["b",4] = "Fire"
war["c",3] = "Fire"

















