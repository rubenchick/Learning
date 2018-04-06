// Function

import UIKit
//3) Создать 3 функции 1 которая ничего не принимает и ничего не возвращает. 2)Принимает но не возвращает. 3)И принимает и возвращает = и все три вызвать потом
//
//4)Создать журнал для учителя который будет принимать имя студента , профессию и оценку и записывает это все в массив.И внесите 10 студентов туда и распечатаете через цикл for
//
//5)Создать функцию которая принимает имя и фамилию, потом положить это в массив и отсортировать и вывести результат в консоль :)
//
//6)Создайте функцию которая принимает параметры и вычисляет площадь круга
//
//7) Создайте Dictionary , с именем ученики , где ключ name и score , а значение (1 тюпл из 5 имен) и (второй тюпл из 5 оценок).И распечатайте только именна по ключу

//ДЗ
//№3
func printHellow () {
    print("Hello")
}

func goToWork (holidayDay: Bool) {
    if holidayDay { print("Stay at home") }
    else { print("Go to work") }
}

func multiplicationTwoNumber (_ numberOne: Int, _ numberTwo: Int) -> (Int) {
   return numberOne * numberTwo
}

printHellow()
goToWork(holidayDay: false)
multiplicationTwoNumber(5,6)

//№4 //Массив из tuples. Журнал для учителя
let studentName = ["Ivan","Petr","Nick","Olga","Anna","Semen","Anton","Stepan","Gleb","Marfa"]
let studentSpecialization = ["Doctor","Teacher","Doctor","Artist","Doctor","Engeener","Doctor","Artist","Teacher","Engeener"]
let studentMark = [5,4,3,3,5,4,4,5,5,4]
var journalOfStudent: [(String,String,Int)] = []

func addNewStudentInJournal (_ nameStident: String, _ specialization: String,_ mark: Int) {
     journalOfStudent.append((nameStident,specialization,mark))
}

for i in 0...studentName.count-1 {
   addNewStudentInJournal(studentName[i],studentSpecialization[i],studentMark[i])
}
for oneStudent in journalOfStudent {
    print("Student \(oneStudent.0) studied for a \(oneStudent.1) on grades \(oneStudent.2)   ")
}

// №5 Создать функцию которая принимает имя и фамилию, потом положить это в массив и отсортировать и вывести результат в консоль

let firstName = ["Ivan","Petr","Nick","Olga"]
let secondName = ["Petrov","Lenin","Gladkov","Ageev"]

var arrayPersonal: [(String,String)] = []

func addNewPersonalInJournal (_ firstName: String, _ secondName: String) {
    arrayPersonal.append((firstName,secondName))
}

for i in 0...firstName.count-1 {
    addNewPersonalInJournal(secondName[i],firstName[i])
}

arrayPersonal.sorted(by: <)

for onePeroson in arrayPersonal {
    print("Second name is \(onePeroson.0) and first name is \(onePeroson.1)")
}

// 6 Создайте функцию которая принимает параметры и вычисляет площадь круга
func squareCircle (_ radius: Double)-> (Double) {
    return M_PI * radius * radius
}

let radiusCircle = 5
print("Площадь круга диметром \(radiusCircle * 2) равна \(squareCircle(Double(radiusCircle))) ")

//№7 Создайте Dictionary , с именем ученики , где ключ name и score , а значение (1 тюпл из 5 имен) и (второй тюпл из 5 оценок).И распечатайте только именна по ключу

let tuplesName = ("Ivan","Oleg","Fedr","Petr","Olga")
let tuplesScore = ("4","2","3","4","5")
let studentDictionary = ["name" : tuplesName, "score": tuplesScore]
//if studentDictionary != nil { print(studentDictionary["name"]!) }

//// Вложенная функция. Передается имя и пол, а обратно получает строку приветствия в правильной форме
func getGreetingText (_ sexPeople: Bool) -> (String) -> (String){
    func peopleIsMan (_ namePeople: String) -> (String) {
        return "Привет уважаемый " + namePeople
    }
    func peopleIsWomen (_ namePeople: String) -> (String) {
        return "Привет уважаемая " + namePeople
    }
    return sexPeople ? peopleIsMan : peopleIsWomen
}
print(getGreetingText(true)("Данил"))


















