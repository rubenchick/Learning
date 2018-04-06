//: A UIKit based Playground for presenting user interface
  
import UIKit
//3) Кто готов идти дальше создать создайте цикл в цикле. В первом цикле интервал 200 раз во втором как доедем до 15 выйти со всех циклов:)
//
//4)Создать в if и отдельно в switch программу которая будет смотреть на возраст человека и говорить куда ему идти в школу, в садик, в универ, на работу или на пенсию и тд
//
//5)Создать все циклы for in которые вы знаете ,максимально больше приветствуеться
//
//6)в switch и отдельно в if создать систему оценивания школьников по 12 бальной системе и и высказывать через print мнение
//
//7) Создайте массив(без тюплов) с именами всех членов вашей семьи включая родственников что б количество имен не менее 10 было и отсортируйте, распечатайте по алфавиту их в консоль

// ДЗ
// №3 В первом цикле интервал 200 раз во втором как доедем до 15 выйти со всех циклов:)
markExit: for _ in 0...200 {
    for j in 0...100 {
        if j==15 {
            break markExit
        }
    }
}

// №4 Создать в if и в switch программу которая будет смотреть на возраст человека и говорить куда ему идти в школу, в садик, в универ, на работу или на пенсию и тд
let age = 2
switch age {
case 0..<3:   print("Пока сидите дома")
case 3..<7:   print("Вам в сад")
case 7..<18:  print("Вам в школу")
case 18..<22: print("Вам в университет")
case 22...65: print("Вам на работу")
default:      print("Вам на пенсию")
}

if age<3 { print("Пока сидите дома") }
else
    if age<7 { print("Вам в сад") }
    else
        if age<18 { print("Вам в школу") }
        else
            if age<22 { print("Вам в университет") }
            else
                if age<65 { print("Вам на работу") }
                else { print("Вам на пенсию") }


// №5
for i in 0..<5         { print(i) }
for i in "Anton"       { print(i) }
for i in [34,54,67,89] { print(i) }
for i in stride(from :0, to: 20, by: 3) { print(i) }

// №6 в switch и отдельно в if создать систему оценивания школьников по 12 бальной системе и и высказывать через print мнение
let mark = 6
switch mark {
case 0...5:  print("Bad")
case 5...7:  print("Satisfactory")
case 8...10: print("Good")
default:     print("Excellent ")
}

if mark<=5          { print("Bad")}
else
    if mark<=7      { print("Satisfactory")}
    else
        if mark<=10 { print("Good") }
        else        { print("Excellent ") }

//7) Создайте массив с именами всех членов вашей семьи включая родственников что б количество имен не менее 10 было и отсортируйте, распечатайте по алфавиту их в консоль
let arrayNamesOfMyFamily: [String] = ["Masha","Kira","Egor","Ivan","Tania","Anton","Semen","Ksusha","Alexander","Tamara"]
for namesRelative in arrayNamesOfMyFamily.sorted() {
    print(namesRelative)
}
