//: A UIKit based Playground for presenting user interface
// Property && Property type
import UIKit

import Foundation

//// ДЗ Devolopers
////1. Повторить то, что есть в видео.
//
//struct Student {
//    static var count : Int = 0
//    var firstName  : String {
//        willSet {
//            //firstName = firstName.capitalized
//        }
//        didSet {
//            if firstName != "" {
//                firstName = firstName.capitalized
//            }
//        }
//    }
//
//    var secondName : String
//    var fullName :String {
//        // getter & setter
//        get {
//            return firstName + " " + secondName
//        }
//        set {
//
//        }
//    }
//    init(firstName: String,secondName: String) {
//        self.firstName = firstName
//        self.secondName = secondName
//        Student.count += 1
//
//    }
//}
//
//var student = Student(firstName: "Olga", secondName: "Petrova")
//print(student.firstName)
//student.firstName = "lenA"
//print(student.firstName) //Lena
//print(student.fullName) //Lena Petrova
//var studentTwo = Student(firstName: "Maxim", secondName: "Oreshkin")
//var studentThree = studentTwo
//studentThree.firstName = "Den"
//print(studentTwo.fullName)
//print(studentThree.fullName)
//print(Student.count)
//
////3. Написать структуру "Create_Triangle",с двумя свойствами - угол A,угол C.
////И создать 2 вычисляемых свойства - те же угол А,угол С.
////И если мы записываем значения в эти углы - результатом должно быть значение третьего угла.
////Для простоты можно взять прямоугольный треугольник, сумма углов которого равна 180 градусов.
//
//struct createTriangle {
//    var angleA : Int
//    var angleC : Int
//    var angleB : Int {
//        get {
//            return 180 - angleA - angleC
//        }
//        set {
//
//        }
//    }
//    init (angleA:Int,angleC:Int) {
//        self.angleA = angleA
//        self.angleC = angleC
//    }
//}
//var triangle = createTriangle(angleA: 50, angleC: 100)
//print("Угол А = \(triangle.angleA), угол В = \(triangle.angleB), угол С = \(triangle.angleC)") // Угол А = 50, угол В = 30, угол С = 100
//triangle.angleC = 57
//print("Угол А = \(triangle.angleA), угол В = \(triangle.angleB), угол С = \(triangle.angleC)") // Угол А = 50, угол В = 73, угол С = 57
//
//
////4. Создать структуру "Резюме", у которой есть такие свойства:
////- Фамилия,
////- Имя.
////- Должность,
////- Опыт,
////- Контактные данные(телефон, емейл),
////- О себе(можно записать какие-то пару предложений на выбор).
//enum Contact : String {
//    case phone, email
//}
//struct resume {
//    var secondName : String
//    var firstName  : String
//    var position   : String
//    var experiance : Int
//    var contact    : Contact
//    var aboutMe    : String
//}
//
////5. Задание на закрепление предыдущих тем:
////Создать журнал, что б можно было писать имя, фамилию и оценку
////Поставить ограничения: имя и фамилия не выше 15 символов каждое.
////И оценка не выше 5.
////Если везде значения превышаться выдавать об этом Сообщения в консоль.
////
//
//class Journal {
//    var firstName  : String {
//        didSet {
//            if firstName.count > 15 {
//                print("Error Very long name")
//                firstName = oldValue
//            }
//        }
//    }
//    var secondName : String {
//        didSet {
//            if secondName.count > 15 {
//                print("Error Very long second name")
//                secondName = oldValue
//            }
//        }
//    }
//    var mark       : Int {
//        willSet {
//
//        }
//        didSet {
//            if mark > 5 {
//                print("Error \(mark) > 5")
//                mark = oldValue
//            }
//        }
//    }
//    init (_ firstName : String, _ secondName : String,_ mark: Int){
//        self.firstName = firstName
//        self.secondName = secondName
//        self.mark = mark
//    }
//}
//var studentOne = Journal("Oleg","Fedorov",3)
//print(studentOne.firstName,studentOne.secondName,studentOne.mark)
//studentOne.mark = 6
//studentOne.firstName = "DmitySolnishkoYasniy"
//studentOne.secondName = "PentAgliIvanoivDunaisky"
//print(studentOne.firstName,studentOne.secondName,studentOne.mark)
//
////6. Написать класс,в котором есть 4 функции:
////-пустая, которая просто выводит сообщение через print,
////- которая принимаете параметры и выводит их в консоль,
////- которая принимает и возвращает параметры.
////- которая принимает замыкание и распечатывает результаты в консоль
//
//class testKnowledge {
//    func oneEmpryAndEmpry () {
//        print("Test is good")
//    }
//    func twoSetAndPrint(_ name:String,_ age: Int) {
//        print("\(name) \(age) года")
//    }
//    func threeSetAndGet(_ length:Int,_ weight: Int) -> (Int) {
//        return length * weight
//    }
//    func fourSetClouserAndPrint(_ number:Int,_ f1:(Int)->(Bool))->() {
//        print( f1(number+16) ? "True": "False")
//    }
//}
//var firstTest = testKnowledge()
//firstTest.oneEmpryAndEmpry()
//firstTest.twoSetAndPrint("Petr", 32)
//print(firstTest.threeSetAndGet(34, 2))
//firstTest.fourSetClouserAndPrint(44, { (s1) in
//    return s1 % 5 == 0
//})

// ДЗ Course
//1. Повторить код Алексея из урока по памяти.
//
//2. Добавить студенту property «Дата рождения» (пусть это будет еще одна структура, содержащая день, месяц, год) и два computed property: первое — вычисляющее его возраст, второе — вычисляющее, сколько лет он учился (считать, что он учился в школе с 6 лет, если студенту меньше 6 лет — возвращать 0)
//let date = Date()
//let calendar = Calendar.current
//let components = calendar.dateComponents([.year, .month, .day], from: date)
//
//let (year, month, day) =  (components.year, components.month, components.day) //Today
//
//struct DateBirthday {
//    var day     : Int
//    var month   : Int
//    var year    : Int
//}
//struct Student {
//    var firstName    : String
//    var secondName   : String
//    var dateBirthday : DateBirthday
//    var age : Int {
//        get {
//            return month! > dateBirthday.month ? (year! - dateBirthday.year) : (year! - dateBirthday.year - 1 )
//        }
//    }
//    var yearsLearning : Int  {
//        get {
//            var tempDate = DateBirthday(day:01, month: 01, year: 1970)
//            if month! > dateBirthday.month { tempDate.year = year! - dateBirthday.year }
//            else {
//                tempDate.year = year! - dateBirthday.year - 1
//            }
//            if tempDate.year < 6 { return 0 }
//            else { return tempDate.year - 6 }
//        }
//    }
//}
//
//var studentOne
//    = Student(firstName: "Oleg", secondName: "Gagarin", dateBirthday: DateBirthday(day:28, month: 5, year: 2004))
//print("\(studentOne.age) ") // 13
//print("\(studentOne.yearsLearning) ") // 7  today 27/03/2018

//3. Создать структуру «Отрезок», содержащую две внутренние структуры «Точки». Структуру «Точка» создать самостоятельно, несмотря на уже имеющуюся в Swift’е. Таким образом, структура «Отрезок» содержит две структуры «Точки» — точки A и B (stored properties). Добавить два computed properties: « середина отрезка» и «длина» (считать математическими функциями)
//3. Создать структуру "отрезок", у которой два свойства - точка "А" и точка "В", которые в свою очередь тоже структуры (не стандартные, а наши собственные)
//Также отрезок имеет вычисляемые свойства (они изменяют точки "А" и "В", если мы изменяем следующие свойства):
//-midPoint - середина отрезка (при её изменении, отрезок смещается на параллельную прямую, проходящую через наш midPoint?)
//-длина отрезка (при изменении, точка "А" остается, а точка "В" движется)

//4. При изменении середины отрезка должно меняться положение точек A и B. При изменении длины, меняется положение точки B

//3. Создать структуру "отрезок", у которой два свойства - точка "А" и точка "В", которые в свою очередь тоже структуры
struct Coordinates {
    var x: Double
    var y: Double
    init(_ x : Double,_ y : Double) {
        self.x = x
        self.y = y
    }
}
struct Segment {
    var pointA   : Coordinates
    var pointB   : Coordinates
    var leght    : Double {
        get {
            return sqrt( pow (( pointB.x - pointA.x),2)+pow((pointB.y - pointA.y),2))
        }
        set {
            let oldLength = sqrt( pow (( pointB.x - pointA.x),2)+pow((pointB.y - pointA.y),2))
            pointB.x = ( pointB.x > pointA.x) ? (pointA.x + (pointB.x - pointA.x)*newValue/oldLength) : ( pointA.x - (pointA.x - pointB.x)*newValue/oldLength)
            pointB.y = ( pointB.y > pointA.y) ? (pointA.y + (pointB.y - pointA.y)*newValue/oldLength) : ( pointA.y - (pointA.y - pointB.y)*newValue/oldLength)
        }
    }
    var midPoint : Coordinates {
        get {
            var x,y : Double
                x = ( pointB.x > pointA.x ) ? (pointB.x-(pointB.x - pointA.x)/2) : (pointA.x - (pointA.x - pointB.x)/2)
                y = ( pointB.y > pointA.y ) ? (pointB.y-(pointB.y - pointA.y)/2) : (pointA.y - (pointA.y - pointB.y)/2)
            return Coordinates(x,y)
        }
        set {
            let oldX = ( pointB.x > pointA.x ) ? (pointB.x-(pointB.x - pointA.x)/2) : (pointA.x - (pointA.x - pointB.x)/2)
            let oldY = ( pointB.y > pointA.y ) ? (pointB.y-(pointB.y - pointA.y)/2) : (pointA.y - (pointA.y - pointB.y)/2)
            pointA = Coordinates((pointA.x - ( oldX-newValue.x )), (pointA.y - ( oldY-newValue.y )))
            pointB = Coordinates ((pointB.x - ( oldX-newValue.x )),(pointB.y - ( oldY-newValue.y )))
        }
    }
    init(_ pointA: Coordinates,_ pointB : Coordinates,_ leght : Double,_ midPoint : Coordinates) {
        self.pointA   = pointA
        self.pointB   = pointB
    }
}

//var w = Coordinates(1,2)
var empry = Segment(Coordinates(0,0),Coordinates(8,0),1,Coordinates(0,0))
//print(empry.leght)
//empry.leght = 10
//print(empry.leght)
//print(empry.pointB.x)
//print(empry.pointB.y)
//print(empry.leght)
print(empry.midPoint.x)
print(empry.midPoint.y)
empry.midPoint = Coordinates(5,5)
print(empry.pointA)
print(empry.pointB)

