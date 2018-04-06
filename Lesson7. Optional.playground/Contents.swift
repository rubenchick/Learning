// Optional
  
import UIKit
//3) Кто готов идти дальше создать 5 констант со СТРОКАМИ которые содержат цифры и посчитайте их используя новые инструменты.
//
//4)Создать 3 константы со значением nil.
//
//5)Создать 5 опциональных типов констант и установите им значения.
//
//6)Вспоминаем прошлые уроки : Распечатайте свое имя в цикле for.
//
//7) Создайте массив с возрастом всех членов вашей семьи и распечатайте в консоли через цикл for.

// ДЗ
// № 3
let stringOne = "1"
let stringTwo = "2"
let stringThree = "5"
let stringFour = "10"
let stringFive = "20"

if Int(stringOne) != nil && Int(stringTwo) != nil && Int(stringThree) != nil && Int(stringFour) != nil && Int(stringFive) != nil {
    let amount: Int = Int(stringOne)! + Int(stringTwo)! + Int(stringThree)! + Int(stringFour)! + Int(stringFive)!
        print(amount)
}
else {
    print("nil")
}

// № 4
let numberCar: Int? = nil
let weigthCar: Double? = nil
let colorCar: String? = nil

// № 5
var lengthDetail: Int? = 5
var heigthDetail: Int? = 12
var wedthDetail: Double? = 3.0
var weigthDetail: Double? = 5.4
var colorDetail: String? = "Green"

// № 6
for character in "Anton" {
    print(character)
}

// № 7
let ageMyFamaly = [4,14,36,39]
for person in ageMyFamaly {
    print(person)
}


