//: A UIKit based Playground for presenting user interface
  
import UIKit
//3) Создать generic для классов, структур, методов, перечислений( по 1-2 формы на каждый).
//
class People<T> {
    var name: String
    var home: T
    init(name: String,home: T){
        self.name = name
        self.home = home
    }
}
var student   = People(name: "Jack", home: 5)
var schoolboy = People(name: "Jack", home: false)
var parents   = People(name: "Jack", home: "Big Green")

struct Human<T> {
    var car: T
}
var doctor  = Human(car: 66)
var teacher = Human(car: "Ford")

func countArray<T>(array: [T])->Int {
    return array.count
}
var dogs = ["Setter","Shelty","Labrador","Simbernar"]
var simpleNumber = [2,3,5,7,11]
countArray(array: dogs)
countArray(array: simpleNumber)

enum Color<T> {
    case Front(T)
    case Back(T)
}

var numberColor = Color<Int>.Back(124)
var stringColor = Color<String>.Back("Dack Blue")

//4) Написать функцию, которая возвращает массив/словарь(на выбор), общий для для последовательностей.
// Version 1
var arrayAllType : [Any] = []
func addToArray<T>(element: T){
    arrayAllType.append(element)
}
addToArray(element: 5)
addToArray(element: false)
addToArray(element: "Dog")

//version 2
func createNewArray<T>(element: T, count: Int)->[T] {
    var newArray : [T] = []
    for _ in 1...count {
        newArray.append(element)
    }
    return newArray
}
let arrayOne
    = createNewArray(element: true, count: 5)
let arrayTwo
    = createNewArray(element: 5, count: 12)

//5) Создать класс, который сортирует массивы значений(на ваш выбор) 3 разными способами.
//Для шпаргалки смотрим обсуждение: "РЕАЛИЗАЦИЯ АЛГОРИТМОВ НА ЯЗЫКЕ SWIFT 3".
//Массивы должны быть связаны с универсальным типом в классе.
class Car<T: Comparable> {
    var item: [T] = []
    
    func sortedCocktail() {
        var temp : T
        var isFinish = false
        var n = -1
        while !isFinish {
            isFinish = true
            n += 1
            if (item.count - 2 - n) > -1 {
                for i in 0...(item.count - 2 - n ) {
                    if item[i] > item[i+1] {
                        temp      = item[i]
                        item[i]   = item[i+1]
                        item[i+1] = temp
                        isFinish = false
                    }
                }
            }
            else { isFinish = true }
        }
    }
    
    func sortedInsertion() {
        var temp: T
        var j : Int
        var isNotSet = true
            for i in 1...(item.count-1) {
                if item[i] < item[i-1] {
                    isNotSet = true
                    temp = item[i]
                    j = i
                    while isNotSet {
                        j -= 1
                        if j == 0 {
                            item[j+1] = item[j]
                            item[j] = temp
                            isNotSet = false
                        }
                        else {
                            if item[j-1] <= temp {
                                item[j+1] = item[j]
                                item[j] = temp
                                isNotSet = false
                            }
                            else {
                                item[j+1] = item[j]
                            }
                        }
                   }
                }
            }
    }
    

    
//    func methodSortedThree( array: inout [Int],at posAt:Int,to posTo:Int) {
//
//        //let bearing = array[posAt + 1]
//        let bearing = array[posAt + (posTo-posAt)/2]
//        // Перетусуем массив
//        var posBearing = Int(posAt + (posTo-posAt)/2) // среднее место в диапазоне
//        print(bearing,posBearing,posAt,posTo)
//        var i = posAt
//        while i < posTo + 1 {
//            print(array[posAt...posTo])
//            print("Element - \(array[i]), Bearing element \(array[posBearing])\n")
//            if (array[i] < bearing) && (i > posBearing) {
//                 array.insert(array.remove(at: i), at: posBearing)
//                posBearing += 1
//            }
//            if (array[i] >= bearing) && (i < posBearing) {
//                array.insert(array.remove(at: i), at: posBearing+1)
//                posBearing -= 1
//                i -= 1
//            }
//            i += 1
//        }
//        //if array[posBearing] <= bearing { posBearing += 1 }
//
//        if (posBearing - 1 - posAt) > 1 {
//            print("First part",posAt,posBearing-1)
//            methodSortedThree(array: &array, at:posAt,to:posBearing - 1)
//        }
//
//        if (posTo - posBearing) > 1 {
//            print("Second part",posBearing,posTo)
//            methodSortedThree(array: &array,at:posBearing,to: posTo)
//        }
//
//    }
    
    func quickSort<T: Comparable>(array: inout [T], at posAt: Int, to posTo:Int) {
        if posTo-posAt < 2 {
            
            if array[posAt] > array[posTo] {
                let temp = array[posAt]
                array[posAt] = array[posTo]
                array[posTo] = temp
            }
            return
        }
        
        var at = posAt
        var to = posTo
        let bearing = array[posAt + 1]
        
        while at <= to {
            if array[at] < bearing {
                at += 1
                continue
            }
            
            if array[to] > bearing {
                to -= 1
                continue
            }
            
            let temp = array[at]
            array[at] = array[to]
            array[to] = temp
            at += 1
            to -= 1
        }

            quickSort(array: &array, at: posAt, to: to)
            quickSort(array: &array, at: to+1, to: posTo)
    }
    
}
var first = Car<Double>()
print("Cocktail method")
first.item = [2.5,1.7,12.0,14.1,12.0,11.0,2,14,1.0,11.1,7,3,2,3.0,5.0,8.0,7,1.2]
print(first.item)
first.sortedCocktail()
print(first.item)

print("\n Insertion method")
var second = Car<String>()
second.item = ["dog","cat","table","apple","dog"]
print(second.item)
second.sortedInsertion()
print(second.item)

var third = Car<Double>()
print("\n QuickSort method")
first.item = [2.5,1.7,12.0,14.1,12.0,11.0,2,14,1.0,11.1,7,3,2,3.0,5.0,8.0,7,1.2]
print(first.item)
third.quickSort(array: &first.item, at: 0, to: first.item.count - 1)
print(first.item)

//6) Написать класс на свой вкус(любые методы,проперти) универсального типа.Используя extension, расширить класс, добавить сабскрипт.
class Programmist<T> {
    var name: T
    var age : Int
    var edication : String?
    var languages : [String] = []
    func addNewLanguages(newLanguage:String) {
        self.languages.append(newLanguage)
    }
    init(name: T,age : Int){
        self.name = name
        self.age = age
    }
    subscript (_ index:Int) -> T? {
        switch index {
        case 0: return name
        case 1: print(age)
        case 2: print(edication)
        default:
            print("hi")
        }
        return name
    }

}
var pavel = Programmist<String>(name: "Pavel",age: 31)

extension Programmist {
    func howManyLanguagesDoYouKnow()-> Int? {
        return self.languages.count
    }
}

pavel.addNewLanguages(newLanguage: "Swift")
pavel.addNewLanguages(newLanguage: "Asembler")
print(pavel.howManyLanguagesDoYouKnow()!)
pavel.languages.count
pavel[0]
pavel[1]



