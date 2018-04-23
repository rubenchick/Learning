//: A UIKit based Playground for presenting user interface
  
import UIKit
//2) Используя протоколы, написать программу "Железный человек"(ЖЧ).
//Задача: программа ЖЧ выполняет простые действия. Такие как: летать, стрелять, ходить, бегать, заряжаться, автопилот(придумайте что ЖЧ будет делать) и выводит их в консоль.
//Алгоритм:
//1) Создаём протоколы действий,
//2) Задаём протоколам свойства и методы.
//3) Создаём класс Mark42(например).
//4) Активируем протоколы для Mark42.
//5) Инициализируем свойства и методы протоколов в классе.
//6) Выводим результаты в консоль.
//
//Например: "Протокол "Стрельба" активирован", "Mark42, протокол "Полет" активирован".
//Тут оставляем непаханное поле для вашей фантазии и знания комиксов Marvel:)
//

protocol Fly {
    var height   : Int { get }
    var flySpeed : Int { get }
    func doFly()
}

protocol Run {
    var runSpeed : Int { get }
    var distance : Int { get }
    func doRunning()
}
protocol Sleep {
    var howLong : Int { get set}
    func doSleeping()
}


class Mark42: Fly,Run, Sleep {

    var _howLong: Int = 5
    var howLong: Int {
            get {
                return _howLong
            }
            set(newValue)
            {
                _howLong = newValue
             }
        }

    func doRunning() {
        print("I run \(distance) meters, at a speed of \(runSpeed) m/s")
    }

    func doFly() {
        print("I am flying at an altitude of \(height) meters, at a speed of \(flySpeed) m/s")
    }

    func doSleeping() {
        print("I went to bed for \(howLong) hours")
    }

    var height: Int = 500
    var flySpeed: Int = 50
    var runSpeed: Int = 10
    var distance: Int = 1600
}
var mark42 = Mark42()
mark42.doFly()
mark42.doRunning()
mark42.doSleeping()
mark42.howLong = 2
mark42.doSleeping()


//3) Для закрепления по-создавайте собственные протоколы в связке с классами, структурами.Результаты, как всегда, в консоль.

