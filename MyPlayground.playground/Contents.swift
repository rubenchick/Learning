//: A UIKit based Playground for presenting user interface
// tuples Кортеж
import UIKit

let oneTuples: (Int, String, Bool) = (55, "Anton", true)
oneTuples.2

let twoTuples = (66, "Ivan", false)
twoTuples

let (numberOne, name, boolValue) = twoTuples
numberOne
name

let (_, _, c) = twoTuples
c

let fourTuples = (one: 77, name: "Masha", boolValue: true)
fourTuples.name

let (name1, name2, name3) = ("Jack", "Serg", "Semen")
name2

//tuples внутри print
let nameMen = "Jack"
let age = 34

print((nameMen,age))


// ДЗ
// 3. 5-ть кортежей
let tupleMonthRus = ("Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь" )
let tupleMonthEng = ("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" )
let tupleStaff = (name: "Ivan", age: 24, education: "High", sex: "Male", dateBirthday: "11.03.1954" )
let tupleRainbow = ("Red","Orange","Yellow","Green","Blue","Indigo","Violet")
let tupleDetail = (length: 5, heigth: 3, width: 15, weigth: 2.64, color: "black")
let (_, _, education,_ ,_) = tupleStaff

// 4. Вывод
print(tupleMonthEng)
print(tupleMonthEng.2)
print(tupleDetail.weigth)
print(education)

// 5. Пустой
let tupleCar: (mark: String, age: Int, color: String)















