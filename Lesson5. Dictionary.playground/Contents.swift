
// Dictionary
// все хранится через ключ/значение
// работают быстрее массивов
import UIKit

// класический вид
let dic1: [Int:String] = [0: "Mather", 1: "Father"]
let dic2: Dictionary<String, Double> = ["papa": 30.0] // пишу профи

// Правильный вид с точки зрения Swift

let dic3 = [0: "Mather", 1: "Father"]
let dic4 = ["mama": "Tanya", "papa": "Sergey"]

dic3[0]
dic4["mama"]

var dic5 = ["car": "mercedes", "phone": "Iphone"]

dic5.count
dic5.isEmpty

var namesOf = [Int : String]()
namesOf.count
namesOf.isEmpty
namesOf[1939] = "World"
namesOf
namesOf.keys
namesOf.values

let dic4Key = [String](dic4.keys)
let dic4Value = [String](dic4.values)


// добавление ключа
dic5["mama"] = "Nina"
dic5
var dic5Key = [String](dic5.keys)
var dic5Value = [String](dic5.values)

dic5.updateValue("Vladimir", forKey: "papa")
dic5.updateValue("Oleg", forKey: "papa2")
dic5
dic5["papa2"] = nil
dic5

dic5.removeValue(forKey: "papa")
dic5

// обнуляем словарь
//dic5 = [:]

//for key in dic5.keys {
//    print(key, dic5[key]!)
//}
//
//for (key, value) in dic5 {
//        print(key, value)
//}
//
//let tupleMonthRus = ("Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь" )
//let tupleMonthEng = ("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" )
//let tupleStaff = (name: "Ivan", age: 24, education: "High", sex: "Male", dateBirthday: "11.03.1954" )
//let tupleRainbow = ("Red","Orange","Yellow","Green","Blue","Indigo","Violet")
//let tupleDetail = (length: 5, heigth: 3, width: 15, weigth: 2.64, color: "black")
//let (_, _, education,_ ,_) = tupleStaff

//3) Кто готов идти дальше создать 10 разных Dictionary с разными типами данных.Один из них должен содержать все месяца года на русском.Второй на английском
//
//4) Соберите все ключи и значения каждого Dictionary и распечатайте в консоль
//
//5)Создайте пустой Dictionary и через условный оператор if проверьте пустой он или нет если пустой то в условии добавьте в него пар значений

// ДЗ
// №3

var dict1: [ Int: String ] = [:]
let dict2 = [1: "Январь",2: "Февраль",3: "Март",4: "Апрель",5: "Май",6: "Июнь",7: "Июль",8: "Август",9: "Сентябрь", 10: "Октябрь", 11: "Ноябрь", 12: "Декабрь"]
let dict3 = ["Январь": "January","Февраль": "February","Март": "March","Апрель": "April","Май": "May","Июнь": "June","Июль": "July", "Август": "August", "Сентябрь": "September","Октябрь": "October", "Ноябрь":"November","Декабрь": "December" ]
let dict4 = ["Silver": 54, "Gold": 98]
let dict5 = ["Война и мир": "Толстой", "Муму": "Тургенев", "Горе от Ума": "Гоголь", "Анна Коренина": "Толстой" ]
let dict6 = ["7в": 32, "7а":28, "6г": 31]
let dict7 = ["Bubka": 6.15, "Isinbaeva": 5.25, "Popov": 6.02]
let dict8 = [1: true, 2: true, 3: false, 99: true]
let dict9 = [true: "USA", false: "France"]
let dict10 = ["pic1": "c:/windows/temp/earth.jpg","pic2": "d:/program/adobe/bear.png"]

// №4
for (key,value) in dict1 {print(key,value)}
for (key,value) in dict2 {print(key,value)}
for (key,value) in dict3 {print(key,value)}
for (key,value) in dict4 {print(key,value)}
for (key,value) in dict5 {print(key,value)}
for (key,value) in dict6 {print(key,value)}
for (key,value) in dict7 {print(key,value)}
for (key,value) in dict8 {print(key,value)}
for (key,value) in dict9 {print(key,value)}
for (key,value) in dict10 {print(key,value)}

// №5
var dict11: [ Int: String ] = [:]
if dict11.isEmpty {
    dict11.updateValue("Petr", forKey: 18)
    dict11 = [23: "Ivan"]
}
dict11





