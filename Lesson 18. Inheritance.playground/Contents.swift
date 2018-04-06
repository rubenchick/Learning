//: A UIKit based Playground for presenting user interface
  
import UIKit
// Developers
//a).Найти информацию что такое наследование в Google, перефразировать эту информацию своими словами и вставить это в xcode в за коментрированом виде.
//b).Сделать то же самое с понятием Инкапсуляция
//c).И так же с понятием полиморфизм.
//
// Наследование - изготовление копии от одного объекта, с возможностью добавить функционал.
// Инкапсуляция - это заключение данных и методов обработки этих данных в единый компонент(объект) || ограничение доступа к ряду свойств и методов при наследовании
// Полиморфизм - Возможность использования разных объектов, через один интерфейс, в результате используется разная логика.

//1. Создать класс "люди", в этом классе 4 property - "имя", "рост", "вес", "пол", а также будет иметь метод "say(говорит)".
enum Sex : String{
    case Men = "Men"
    case Woman = "Women"
}
class Human {
    var name: String
    var height : Int
    var weight : Int
    var sex    : Sex
    func say() {
        print("What are you? ", terminator: "")
    }
    init(name: String,height : Int, weight : Int,sex : Sex)
    {
        self.name   = name
        self.height = height
        self.weight = weight
        self.sex    = sex
    }
}
//2. Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)" в каждом из этих классов.
class Cook: Human {
    override func say() {
        super.say()
        print("I am cook.")
    }
}
class Manager: Human {
    override func say() {
        super.say()
        print("I am manager.")
    }
}
class Wrestler: Human {
    override func say() {
        super.say()
        print("I am wrestler.")
    }
}

//3. Создать по одному объекту(экземпляру) каждого класса и объединить их в массив.
let cook     = Cook(name: "Oliver", height: 180, weight: 85, sex: .Men)
let manager  = Manager(name: "Oleg", height: 185, weight: 90, sex: .Men)
let wrestler = Wrestler(name: "Ivan", height: 190, weight: 115, sex: .Men)
var peopleInOurHome = [cook,manager,wrestler]

//4. В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)".
for person in peopleInOurHome {
    print("My name is \(person.name). I am a \(person.sex.rawValue). Height is \(person.height) and weight is \(person.weight)kg. ", terminator: "")
    person.say()
}

//5. Создать еще одного наследника от super Class, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам People.
//6. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.
//7. Вывести все это в обратном порядке(Google в помощь).
class Scientist: Human {
    var age: Int
    var married: Bool
    init(name: String, height : Int, weight : Int, sex : Sex, age: Int, married: Bool){
        self.age = age
        self.married = married
        super.init(name: name, height : height, weight : weight, sex : sex)
    }
}

let scientist = Scientist(name: "Isak", height: 175, weight: 75, sex: .Men, age: 56, married: true)
peopleInOurHome.append(scientist)
print("\nAdd new person")
for person in peopleInOurHome.reversed() {
    print("My name is \(person.name). I am a \(person.sex.rawValue). Height is \(person.height) and weight is \(person.weight)kg. ", terminator: "")
    if person is Scientist { //подглядел
        print("My age is \(scientist.age) and I married is \(scientist.married). ", terminator: "")
        person.say()
        print("")
    }
    else {  person.say() }
}


//6. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.
//

//7. Вывести все это в обратном порядке(Google в помощь).
//


//Для тех кто не просто учит программирование а хочет еще и работать.
//
//8. Создать класс "Марсианин" (не наследник класса people!) со своими собственными property (отличными от people) и методом "say" (отличным от people).
//9. Унаследоваться от него и создать пару других классов (Инопланетян) с переопределенным методом "say".
//10. Объединить всех people и Марсианинов) в один массив.
//11. В цикле выводить тип объекта (People или Марсианин) перед тем как выводить его свойства и вызывать метод
//
//Для тех кто дойдет до этого уровня будут достоин уважения!
//
//12. Поместить всех people в один массив, а Марсиан в другой массив (количество People и Марсиан должно быть разное)
//13. В одном цикле “for in” выводить People а потом Марсианина, доставая данные поочередно из двух разных массивов, если в одном из массивов объектов больше, то в конце должны выводиться только объекты этого массива (так как других уже нет)
//
//Кто пройдет этот уровень станет настоящим Джедаем и сможет открывать двери на работу с ноги!:)
//
//14. Соединить Марсиан и People в одном массиве.
//15. Используя нужный метод array отсортировать массив (как результат будет другой массив).
//16. Сортировать так: сначала People, а потом Марсиане, люди отсортированы по имени, а Марсиане по марсианским кличкам.
//17.Требует разобраться с сортировкой.


