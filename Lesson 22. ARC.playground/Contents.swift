////: A UIKit based Playground for presenting user interface
//// ARC

import UIKit

////2. Перенесёмся на далёкую планету, населённую роботами.
////Там живут простые роботы(количество на ваше усмотрение, чем больше - тем лучше) и есть верховный Робот, к которому простые роботы обращаются за помощью. Например, спрашивают: "дай новые детали" или "собери нам ещё простых роботов". Также простые роботы общаются между собой.
////Все роботы,в т.ч. и верховный - находятся в пространстве Планета, которое может рассказать сколько роботов сейчас живёт.
////
////Пояснение:
////1. Можно сделать простых роботов отдельными классами.
////2. Верховный Робот - родительский класс.
////3. Всё общение на Планете - с помощью методов, разумеется.
////4. У верховного Робота есть замыкания: если он обращается к роботам, они просто говорят "я робот номер ...". Если обращается к Планете - она возвращает ему количество роботов(массив).

class Planet {
    var mainRobot : MainRobot
    var simpleRobot : [MainRobot]?
    init(mainRobot : MainRobot, simpleRobot : [MainRobot]?) {
        self.mainRobot = mainRobot
        self.simpleRobot = simpleRobot

    }
    // сколько живет сущностей
    func howManyUs() {
        print(simpleRobot != nil ? "Main - \(mainRobot.name) and \((simpleRobot?.count)!) child" : "Vere much. Main - \(mainRobot.name) and nil child")
    }
}

class MainRobot {
    var pl: Planet?
    var name : String {
        return "Papa"
    }
//
//    init() {
//        pl = Planet(mainRobot: self, simpleRobot: self.pl.simpleRobot)
//    }
//    init() {
//        pl = Planet(mainRobot: self, simpleRobot: self.pl.simpleRobot)
//    }
//    func Test () {
//        self.pl.simpleRobot?.count
//        let d = self.pl.simpleRobot![0]
//        print(d.name)
//    }
//    lazy var askToRobot: (() -> ())? = {
//        [unowned self] in
//        if self.pl?.simpleRobot?.count != nil {
//            let rand = Int(arc4random_uniform(UInt32((self.pl?.simpleRobot?.count)!)))
//            print(self.pl?.simpleRobot![rand].name)
//           // self.pl.simpleRobot![0].Test()
//
//        }
//        else {
//            print("Nobody tell with me")
//        }
//    //    MainRobot.pl.simpleRobot?.count
//        //print(self.pl?.simpleRobot?.count)
//    }
    func  askToPlanet() {
        self.pl?.howManyUs()
    }
//    lazy var askToPlanet: () -> (String) = {
//        [unowned self] in
//        return "Нас рать"
//        //print(self.pl?.howManyUs() ?? <#default value#>)
//        //    MainRobot.pl.simpleRobot?.count
//        //print(self.pl?.simpleRobot?.count)
//    }

    // обращение к ... планете или роботу
}

class SimpleRobot1 : MainRobot {
    var planet : Planet?
    override var name : String {
        return "R2D2"
    }

    func answerToMain () {
        print("I am robot - \(self.name)")
    }

    func askToMain() {
        print("\((self.planet?.mainRobot.name)!), it is a \(self.name). Get me new detail. Need Upgrade.")
    }

    func talkWithRobot() {
        if self.planet?.simpleRobot?.count != nil {
            if (self.planet?.simpleRobot?.count)! < 2 {  print("Nobody tell with me") }
            else {
                var rand = Int(arc4random_uniform(UInt32((self.planet?.simpleRobot?.count)!)))
                while (self.planet?.simpleRobot?[rand].name)! == self.name {
                      rand = Int(arc4random_uniform(UInt32((self.planet?.simpleRobot?.count)!)))
                }
                print("\((self.planet?.simpleRobot?[rand].name)!) hellow, My name is \(self.name).")
            }
        }
        else {
            print("Nobody tell with me")
        }
    }
}

class SimpleRobot2 : MainRobot {
    var planet : Planet?
    override var name : String {
        return "Red"
    }

    func answerToMain () {
        print("I am robot - \(self.name)")
    }

    func askToMain() {
        print("\((self.planet?.mainRobot.name)!), it is a \(self.name). Get me new detail. Need Upgrade.")
    }
    func tellWithRobot() {
        if self.planet?.simpleRobot?.count != nil {
            if (self.planet?.simpleRobot?.count)! < 2 {  print("Nobody tell with me") }
            else {
                var rand = Int(arc4random_uniform(UInt32((self.planet?.simpleRobot?.count)!)))
                while (self.planet?.simpleRobot?[rand].name)! == self.name {
                    rand = Int(arc4random_uniform(UInt32((self.planet?.simpleRobot?.count)!)))
                }
                print("\((self.planet?.simpleRobot?[rand].name)!) hellow, My name is \(self.name).")
            }
        }
        else {
            print("Nobody tell with me")
        }
    }
}

class SimpleRobot3 : MainRobot {
    var planet : Planet?

    override var name : String {
        return "Wood"
    }

    func answerToMain () {
        print("I am robot - \(self.name)")
    }

    func askToMain() {
        print("\((self.planet?.mainRobot.name)!), it is a \(self.name). Get me new detail. Need Upgrade.")
    }

    func tellWithRobot() {
        if self.planet?.simpleRobot?.count != nil {
            if (self.planet?.simpleRobot?.count)! < 2 {  print("Nobody tell with me") }
            else {
                var rand = Int(arc4random_uniform(UInt32((self.planet?.simpleRobot?.count)!)))
                while (self.planet?.simpleRobot?[rand].name)! == self.name {
                    rand = Int(arc4random_uniform(UInt32((self.planet?.simpleRobot?.count)!)))
                }
                print("\((self.planet?.simpleRobot?[rand].name)!) hellow, My name is \(self.name).")
            }
        }
        else {
            print("Nobody tell with me")
        }
    }

}
var mainRobot = MainRobot()
var simpleRobot1 = SimpleRobot1()
var simpleRobot2 = SimpleRobot2()
var simpleRobot3 = SimpleRobot3()

var planet = Planet(mainRobot: mainRobot, simpleRobot: nil)

planet.simpleRobot = [simpleRobot1,simpleRobot2,simpleRobot3]
mainRobot.pl = planet
simpleRobot1.planet = planet
simpleRobot2.planet = planet
simpleRobot3.planet = planet

planet.howManyUs()
simpleRobot2.askToMain()
simpleRobot3.answerToMain()
simpleRobot1.talkWithRobot()
mainRobot.askToPlanet()
//
//
print("Finish")
//
//
//
////Блок на повторение материала:
////
////1. Написать механизм optional binding и все что полагается к нему.
////2. Создать опциональный массив строк,
////Получать значение по сабскриптам и fource unwrap.
////
////3. Создать классы: Дом, Адрес, Парковка , Машина. Заполнить их данными и экземплярами соответственно логике. ( У дома есть адрес. У гаража машина и тд.)
////
////4.Для тех, у кого есть желание. Создать проект( не плейграунд,Single View Application), в нем на сториборд положить button и label, и запрограммировать так чтобы при загрузке label был пустым, а по нажатию на button - появилось ваше имя и + I love swift.
//
//
//
//
//
//
//
//
//
//// Couirse
////Рассмотрим такую ситуацию: есть семья - папа, мама и дети.
////Папа глава семьи, у него есть Мама, Мама контролирует детей, т.е. иерархия: Папа - Мама - Дети, Дети на одном уровне.
////Дети могут вызывать друг друга и они могут искать пути, как общаться с другими Детьми, например говорить "дай игрушку", спрашивать Маму: "Мама, дай конфетку", общаться с Папой: "Папа, купи игрушку".
////Вся эта иерархия лежит в объекте класса Семья, у которого есть методы, например распечатать всю Семью, т.е. метод вернёт массив всех членов Семьи.
////У Папы есть 3 кложера (closures) - 1. когда он обращается к Семье - распечатать всю Семью, 2. распечатать Маму, 3. распечатать всех Детей.
////Создать всю иерархию со связями. При выходе из зоны видимости все объекты должны быть уничтожены. Используем Command-Line Tool.
//
////class Family {
////    var father : Father
////    var mother : Mother
////    var child : [Child]?
////    init(father : Father, mother : Mother, child : [Child]){
////        self.father = father
////        self.mother = mother
////        self.child = child
////    }
////
////    deinit {
////        print("Family is nil")
////    }
////}
////
////class Father {
////    var name: String
////    var wife: Mother?
////
////    init(name: String) {
////        self.name = name
////    }
////
////    deinit {
////        print("Father \(name) is nil")
////    }
////}
////
////class Mother {
////    var name: String
////    var child: [Child]?
////    init(name: String) {
////        self.name = name
////    }
////
////    deinit {
////        print("Mother \(name) is nil")
////    }
////}
////
////class Child {
////    var name: String
////    init(name: String) {
////        self.name = name
////    }
////
////    deinit {
////        print("Child \(name) is nil")
////    }
////}
////
////var program = true
////if program {
////    var father : Father?
////    father = Father(name: "Max")
////
////
////
////
////
////
////}
////
////
////print("Close")
//
//
//
//
//
//
//
//
//
//
//
//
