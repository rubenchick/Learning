// Clouser
  
import UIKit

//2) Повторить то, что есть в видео.
//3) Написать сортировку массива с помощью замыкания, сначала в одну сторону, затем в другую.Вывести всё в консоль.
//4) Создать метод который запрашивает имена друзей, после этого имена положить в массив.
//Массив отсортировать по количеству букв в имени.
//5) Написать функцию которая будет принимать ключи, выводить ключи и значения словаря (Dictionary). Тип ключа и значения выбирайте сами.
//6) Написать функцию, которая принимает пустые массивы(один строковый, второй - числовой) и проверяет их: если пустой - то добавить значения и вывести в консоль.

////Сортировка массива
//var arrayNumber = ["Mark","Anton","Veronika","Yna","Vladislav","Masha"]
//
//let a1 = arrayNumber.sorted()
//
//let a3 = arrayNumber.sorted { (s1, s2) -> Bool in
//    return s2 < s1
//}
//let a4 = arrayNumber.sorted(by: { $0.count > $1.count} )
//
//let a2 = arrayNumber.sorted { (s1, s2) -> Bool in
//    return s1 < s2
//}
//
//func needChange (_ s1: String,_ s2: String) -> (Bool) {
//    return s1 > s2
//}
//let a5 = arrayNumber.sorted(by: needChange)
//
//// классический вид clouser
//let a6 = arrayNumber.sorted(by: { (s1: String,s2: String) -> (Bool) in return s1 < s2 })
//// так как системя знает, что передаются два String, а принимается Bool, то это можно не писать
//let a7 = arrayNumber.sorted(by: { s1,s2 in return s1 < s2 })
//let a8 = arrayNumber.sorted(by: { $0 < $1 })
//let a9 = arrayNumber.sorted(by: >)
//let a10 = arrayNumber.sorted() { $0 < $1 }
//let a11 = arrayNumber.sorted { $0 < $1 }
//
//
//
//
//print("Массив \(type(of: a1)) \(arrayNumber)")
//print("Первая сортировка \(a1)")
//print("Вторая сортировка \(a2)")
//print("Третья сортировка \(a3)")
//print("4 сортировка \(a4)")
//print("5 сортировка \(a5)")
//print("6 сортировка \(a6)")
//print("7 сортировка \(a7)")
//print("8 сортировка \(a8)")
//print("9 сортировка \(a9)")
//print("10 сортировка \(a10)")
//
//// Example Volume of circle
//let volumeFiger = { (higth: Int, width: Int, length: Int ) -> (Int) in return higth * width * length }
//let aa = volumeFiger(5,6,10)
//
//// Maximum numder from array
////let volumeFiger = { (higth: Int, width: Int, length: Int ) -> (Int) in return higth * width * length }
////let aa = volumeFiger(5,6,10)
//let arrayDateBirthday = [1,2,3,4,50,6,7,8,3,4,2,6]
//let maximumNumber = { (array : [Int]) -> (Int) in
//    var max = array[0]
//    for i in array {
//        if i>max {max = i}
//    }
//    return max }
//let x = maximumNumber(arrayDateBirthday)
//
//var b = arrayDateBirthday.map { (num) -> Int in return num*10 }
//print(b)
//
//let digitNames = [0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine" ]
//let numbers = [16, 58, 510]
//
//let stringArray = numbers.map { (number) -> String in
//    var number = number
//    var stringNames = ""
//    while number > 0 {
//     stringNames = digitNames[number % 10]! + stringNames
//     number = Int(number/10)
//    }
//    return stringNames }
//
//print(stringArray)
//
////Замыкание увеличивающее число на Х
//
//func makeIncrement (_ amount: Int) -> () -> Int {
//    var total = 0
//    func inctrementer () -> Int {
//        total = total + amount
//        return total
//    }
//    return inctrementer
//}
//let icrementeByTen = makeIncrement(10)
//let icrementeBySeven = makeIncrement(7)
//var xx = icrementeByTen()
//xx = icrementeByTen()
//print(xx)
//xx = icrementeBySeven()
//var yy = icrementeByTen()
//print(xx)

//// Захват значения
//func  makeTranslator(text: String) -> (String) -> (String) {
//    return {(name: String) -> (String) in return text + " " + name }
//}
//let s = makeTranslator(text: "Home")
//let t = s("Елена")
//let p = s("Петр")
//let o = makeTranslator(text: "Hi")("Friend")
//print(t)
//
//
//// ДЗ
//// №3 Написать сортировку массива с помощью замыкания, сначала в одну сторону, затем в другую.Вывести всё в консоль.
//let arrayNumber2 = [34,53,78,97,34,22,76]
//let sortingUp = arrayNumber2.sorted(by: {(n1: Int,n2: Int) -> Bool in return n1 < n2 })
//let sortingDown = arrayNumber2.sorted(by: { return $0 > $1 })
//print(sortingUp)
//print(sortingDown)
//
//// №4 Создать метод который запрашивает имена друзей, после этого имена положить в массив.
////    Массив отсортировать по количеству букв в имени.
//var arrayNameFriends : [String] = []
//func addName (_ name: String) -> () {
//     arrayNameFriends.append(name)
//}
//addName("Ivan")
//addName("Yana")
//addName("Vladislav")
//addName("Ksenia")
//
//let sortedArrayNameFriends = arrayNameFriends.sorted(by: { $0.count < $1.count} )
//print(sortedArrayNameFriends)
//
////5) Написать функцию которая будет принимать ключи, выводить ключи и значения словаря (Dictionary). Тип ключа и значения выбирайте сами.
//let digitalNames = [0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine" ]
//func printDictionary (_ name: Int) -> () {
//    if digitalNames[name] != nil { print("Ключ \(name) значение \(digitalNames[name]!)") }
//    else {print("Key is fail")}
//}
//printDictionary(5)
//
////6) Написать функцию, которая принимает пустые массивы(один строковый, второй - числовой) и проверяет их: если пустой - то добавить значения и вывести в консоль.
////var arrayString: [String] = ["55"]
////var arrayInt: [Int] = [66]
////func checkArray (_ array: [Any],_ elem: Any) -> ([Any]) {
////    var arrayTemp = array
//// //   { (element: Any) -> () in return 5  }
////    arrayTemp.append(elem)
////    //print(arrayTemp)
////    return arrayTemp
////}
////arrayString = checkArray(arrayString,"4") as! [String]
////arrayInt = checkArray(arrayInt,46) as! [Int]
////print(arrayInt)
////print(arrayString)
//
////6) Написать функцию, которая принимает пустые массивы(один строковый, второй - числовой) и проверяет их: если пустой - то добавить значения и вывести в консоль.
//// Вариант 1
//var arrayString: [String] = []
//var arrayInt: [Int] = []
//func checkArray (_ array: [Any]) -> (_ elem: Any) -> ([Any]) {
//    var arrayTemp = array
//    if array.isEmpty {
//         return { (_ elem: Any) -> ([Any]) in arrayTemp.append(elem); return arrayTemp }
//    }
//    else {
//       return { (_ elem: Any) -> ([Any]) in return arrayTemp } }
//}
//
//arrayString = checkArray(arrayString)("4") as! [String]
//arrayString = checkArray(arrayString)("99") as! [String]
//print(arrayString)
//arrayInt = checkArray(arrayInt)(46) as! [Int]
//print(arrayInt)
//
//// Вариант 2
//var arrayString2: [String] = []
//var arrayInt2: [Int] = []
//func checkArray2 (_ arrayString: [String],_ arrayInt: [Int]) -> ([String],[Int]) {
//    var arrayTempString = arrayString
//    var arrayTempInt = arrayInt
//    if arrayTempString.isEmpty { arrayTempString.append("f") }
//    if arrayTempInt.isEmpty { arrayTempInt.append(55) }
//    return (arrayTempString,arrayTempInt)
//}
//(arrayString2, arrayInt2) = checkArray2(arrayString2, arrayInt2)
//print(arrayString2)
//print(arrayInt2)

// Задания  iOS Development Course
// Тест функция работы с массивом

let array = [1,5,7,3,5,88,45,32,45,6,9]
func filterArray (_ array:[Int],_ f:(Int)->Bool) -> ([Int]) {
    var arrayTemp: [Int] = []
    for i in array {
        if f(i) {arrayTemp.append(i) }
    }
    return arrayTemp
}
let a1 =
    filterArray(array, { (s1: Int) -> Bool in return s1 > 3 })
let a2 =
    filterArray(array, { (s1: Int) -> Bool in return s1 % 2 == 0 })
let a3 =
    filterArray(array, { return $0 % 3 == 0 })

//1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.

func tenTime(_ f:() -> ()) -> () {
    for i in 1...10 {
        print(i)
    }
    f()
}
tenTime {()->() in print("clouser") }

//2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.
var arrayInt = [1,5,7,3,5,88,45,32,45,6,9]
let b1
    = arrayInt.sorted(by: { (s1: Int, s2: Int) -> Bool in
    return s1 < s2
})
let b2
    = arrayInt.sorted(by: { return $1 < $0 })

//3. Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.
//
//используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.

func findX(_ arrayInt:[Int],_ f:(_ s1:Int,_ s2:Int?) -> Bool ) -> Int {
    var s3 : Int? = arrayInt[0]
    for element in arrayInt {
        if f(element,s3) {s3 = element}
    }
    return s3!
}

arrayInt = [15,5,7,3,5,88,45,32,45,6,9]
// минимум
let h1 =
    findX(arrayInt,{(s1:Int,s2:Int?)->(Bool) in return s1 < s2! })
// максимум
let h2 =
    findX(arrayInt,{(s1:Int,s2:Int?)->(Bool) in return s1 > s2! })

//4. Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы

let longString : String = "kjshdAfDushFanTsfoJi#$3wu4798r2%$y34hhs38*"
var arrayChar: [Character] = []
for i in longString {
    arrayChar.append(i)
}
let sordedArray
    = arrayChar.sorted(by: {
        var (p1, p2) : (Int, Int)
        switch $0 {
        case "a","e","y","u","i","o","j","A","E","Y","U","I","O","J": p1 = 1
        case "A"..."z": p1 = 2
        case "0"..."9": p1 = 3
        default: p1 = 4
        }
        switch $1 {
        case "a","e","y","u","i","o","j","A","E","Y","U","I","O","J": p2 = 1
        case "A"..."z": p2 = 2
        case "0"..."9": p2 = 3
        default: p2 = 4
        }
        return p1 == p2 ? $0 < $1 : p1 < p2
    })


//5. Проделайте задание №3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)
//let longString2 = "kjshdAfDushFanTsfoJiwuryhhs"
let longString2 = "kjs"
var arrayLetter: [String] = []
for i in longString2 {
    arrayLetter.append(String(i))
}

var arrayLetterUTF : [Int] = []
for i in longString2.unicodeScalars {
    arrayLetterUTF.append(Int(i.value))
}

func findString(_ arrayStr:[String],_ f:(_ s1:String,_ s2:String?) -> Bool ) -> String {
    var s3 : String? = arrayStr[0]
    for element in arrayStr {
        if f(element,s3) {s3 = element}
    }
    return s3!
}
////// минимум
let h3 =
    findString(arrayLetter,{ (s1,s2) -> Bool in
        var i1: Int
        var i2: Int
        for scalar in s1.unicodeScalars {
            i1 = Int(scalar.value)
        }
        for scalar2 in s2!.unicodeScalars {
            i2 = Int(scalar2.value)
        }
        print(i1)
        return true
        })


