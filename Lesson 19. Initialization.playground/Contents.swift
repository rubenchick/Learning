//: A UIKit based Playground for presenting user interface
// Initialization
// part I
import UIKit
//
//class Student1 {
//    var firstname : String
//    var lastName : String
//    var fullName : String {
//        get {
//            return firstname + " " + lastName
//        }
//    }
//    init(){
//        firstname = ""
//        lastName = ""
//    }
//}
//// если есть значение по умолчанию, то не желательно делать инициализатор.
//class Student2 {
//    var firstname = ""
//    var lastName = ""
//}
//
//
//class Student3 {
//    var firstname : String
//    var lastName : String
//    init(firstname : String,_ lastName : String){ //_ wilecard
//        self.firstname = firstname
//        self.lastName = lastName
//    }
//}
//
//class Student4{
//    var middleName : String? // Не нужно инициализировать
//}
//
//class Student5 {
//    let maxAge : Int
//    init(){
//        maxAge = 100 // не наследуюется
//    }
//}
//
//class Student6: Student5 {
//    override init() {
//       // maxAge = 110 // не можем переопределить
//    }
//}
//struct Studen7 {
//    var firstname : String
//    var lastName : String
//    // 2 инициализатора
//    init (){
//        firstname = ""
//        lastName = ""
//    }
//
//    // два инициализатора
//
//    init(firstname : String,_ lastName : String){ //_ wilecard
//        self.firstname = firstname
//        self.lastName = lastName
//    }
//
//}
//
//
//let s1 = Student1()
//let s2 = Student2()
//let s3 = Student3(firstname: "a'","b")
//let s5 = Student5()
//
//let s7 = Studen7(firstname: "a","b")

////////////////////////////////////
// Главные инициализаторы Disagnated

//class Human {
//    var weight : Int
//    var age : Int
//    // Disagnated - Должен быть один. Определяет ВСЕ проперти.
//    init(weight : Int,age : Int){
//        self.weight = weight
//        self.age = age
//    }
//
////    //Convenience initialization - инициализатор, который принимает только те значения, которые нам известны, остальные по default.
////    //
////    init(age: Int){
////        self.age = age
////        self.weight = 0
////    }
//
//    // правльно так. Не нужно делать все возможные варианты, но часто используемые нужно.
//    convenience init(age: Int){
//        self.init(weight: 0, age: age)
//    }
//
//    convenience init(weight: Int) {
//        self.init(weight: weight, age: 0)
//    }
//
//    convenience init() {
//        self.init(weight: 0) // могут вызывать друг друга, а в конечном счете disagneted
//    }
//    func test(){ }
//}
//let h1 = Human(weight: 70, age: 25)
//let h3 = Human(weight: 67)
//
//// !!!!!!!! Disagnated - вызывают Disagnated родительского класса, а Convenience - Disagnated своего
//
//class Student: Human {
//    var firstName : String
//    var lastName : String
//
//    init(firstName : String,lastName : String){ //_ wilecard
//
//        // сначала инициализируем свои проперти, а потом родительского класса
//        self.firstName = firstName
//        self.lastName = lastName
//        // нужно вызвать иницилизатор Родительского класса
//        super.init(weight: 0, age: 0) // - Disagnated вызывает только Disagnated !!!!!!!!!
//        self.age = 50
//    }
//
//    convenience init(firstName: String) {
//        // self.age = 45 Будет ошибка. Первым вызываем инициализатор
//        // super.init(weight: 0, age: 0) будет ошибка
//        self.init(firstName: firstName, lastName: "Green")
//        self.age = 28
//        test()
//    }
//}
//
//let student
//    = Student(firstName: "a")
//
//// part II
//
//    // 2 Правила.
//    // 1. Если в subclass нет Disagnated инициализатора, то все инициализаторы родительского класса присутствуют + можно делать Convenience инициализаторы. Если, есть, то все инициализаторы родителького класса теряются и их нужно заново переопределить все родительский Disagnated
//
////    class Doctor: Student{
////        var fieldOfStudy = ""
////
////        convenience init(fieldOfStudy : String){
////            self.init(firstName: "Doctor", lastName: "House")     // Инициализация в родительском классе по факту
////            self.fieldOfStudy = fieldOfStudy
////        }
////    }
//    // 2. If В Sub class  свой Disagnated инициализатор, то нужно переопределить все родительские Disagnated, тогда будут доступны все convenience инициализаторы родителя.
//
//class Doctor: Student{
//    var fieldOfStudy : String
//
//    init(fieldOfStudy : String){
//        self.fieldOfStudy = fieldOfStudy
//        super.init(firstName: "Doctor", lastName: "House")
//    }
//
//    override init(firstName: String, lastName: String) {
//        self.fieldOfStudy = "Helth"
//        super.init(firstName: firstName, lastName: lastName)
//    }
//}
// ВАЖНО!!!
// Human -> Student -> Doctor
// Чтобы Doctor видел все иницализации Human, Student должен все Disagnated Human override, а Doctor уже потом все Disagnated Student override. Что бы не "тащить" через все уровни override, можно Human Disagnated -> Stident Convenience и  тогда не нужно будет в Doctor override Human, так как он уже Convenience
//  Convenience не нужно override, так как они никогда не вызывают родительские методы (только если Disagnated->Convenience )
//  Смысл ясен, в синтаксисе нужно рахобраться


// part III



class Human {
    var weight : Int
    var age : Int

    init(weight : Int,age : Int){
        self.weight = weight
        self.age = age
    }

    convenience init(age: Int){
        self.init(weight: 0, age: age)
    }
    
    convenience init(weight: Int) {
        self.init(weight: weight, age: 0)
    }
    
    convenience init() {
        self.init(weight: 0)
    }
    func test(){ }
}

enum Color : Int {
    case Black
    case White
    
    init?(value: Int){
        switch value {
        case 0 :   self = .Black
        case 1 :   self = .White
        default:   return nil
        }
    }
}

let a = Color(value: 1)
//a!.rawValue

struct Size {
    var width : Int
    var height : Int
    // создадим инициализатор, чтобы отсечь size < 0
    init?(width : Int, height : Int) {
        //return nil // можем установить в любом месте
        self.width = width
        if height < 0 {
            return nil
        }
        self.height = height
    }
}

class Friend{
    var name: String
    required init?(name: String) { // required  - обязательно нужно будет инициализировать в Su
        if name.isEmpty {
                return nil // только после инициализации
        }
        self.name = name
        
    }
    // только после инициализации
}
let f = Friend(name : "")








































