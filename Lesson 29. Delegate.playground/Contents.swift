//: A UIKit based Playground for presenting user interface
  
import UIKit
//1) Проработать код из видео.
// Складывать в один массив все сообщения юзера. Один класс делегирует ведение массива сообщений другому классу.
protocol FileDelegate { // протокол обмена
    var nameTo: [(String,String)] { get }
    func addNewMessage(sendTo: String,message: String)
}

class MayorOne: FileDelegate { // Кто пишет
    
    var nameTo: [(String,String)] = []
    func addNewMessage(sendTo: String,message: String) {
        self.nameTo.append((sendTo,message))
    }
}

class MayorTwo: FileDelegate { // Кто пишет
    
    var nameTo: [(String,String)] = []
    func addNewMessage(sendTo: String,message: String) {
        self.nameTo.append(("Mr. "+sendTo,message))
    }
}

class User {                    // Кого пишут
    var name: String
    var delegateInfo: FileDelegate?
    
    func sendNewMessage(sendTo: String, sendText: String) {
        delegateInfo?.addNewMessage(sendTo: sendTo, message: sendText)
    }
    init(name: String){
        self.name = name
    }
    init(name: String,delegateInfo: FileDelegate?){
        self.name = name
        self.delegateInfo = delegateInfo
    }
}


var mayorOne = MayorOne() // Товарищ Майор пишет
var mayorTwo = MayorTwo() // Товарищ Майор пишет

var user = User(name: "Anna")

user.delegateInfo = mayorOne

user.sendNewMessage(sendTo: "Sergey", sendText: "Hi Sergey")
user.sendNewMessage(sendTo: "Timur", sendText: "Go walk")

user.delegateInfo = mayorTwo

user.sendNewMessage(sendTo: "Pavel", sendText: "Telegram???????")
user.sendNewMessage(sendTo: "Mikhail", sendText: "Where are money?")

//print("Первый майор записал: ",mayorOne.nameTo)
//print("Второй майор записал: ",mayorTwo.nameTo)


//2) Создать 2 протокола:
//1- "Начинай писать код" со свойствами: время, количество кода.
//И функцией writeCode()
protocol StartOfWritingDelegate {
    var time       : String { get } // время старта
    var valueOfCode: Int { get set }
    func writeCode(time:String,valueOfCode:Int)
}

//2- "Заканчивай писать код" с функцией: stopCoding()

protocol TheEndOfWritingDelegate {
    func stopCoding()
}

class JournalWorkTime: StartOfWritingDelegate,TheEndOfWritingDelegate {
    
    var array: [(String,Int)]  = []
    var time: String = ""
    var valueOfCode: Int = 0
    
    func writeCode(time:String,valueOfCode:Int) {
        array.append((time, valueOfCode))
        self.time = time
        self.valueOfCode = valueOfCode
        print("Pазработка началась. пишем код")
    }
    
    func stopCoding() {
        print("Работа закончена. Сдаю в тестирование")
    }
    
}
//
//И класс: Разработчик, у которого есть свойства - количество программистов, специализации(ios, android, web).
//Разработчику подключаем два этих протокола.

class Coder  {
    
    enum `Type` {
        case iOS
        case android
        case web
    }
    
    var startDelegate: StartOfWritingDelegate?
    var stopDelegate: TheEndOfWritingDelegate?
    
    var countCoder : Int
    var specialization : Type
    func StartCoding(time: String, valueOfCode: Int) {
        startDelegate?.writeCode(time: time, valueOfCode: valueOfCode)
    }
    func EndCoding(){
        stopDelegate?.stopCoding()
    }
    init(countCoder : Int,specialization : Type){
        self.countCoder = countCoder
        self.specialization = specialization
    }
    
}
var journal = JournalWorkTime()

var coder1 = Coder(countCoder: 5, specialization: .iOS)
var coder2 = Coder(countCoder: 2, specialization: .android)

coder1.startDelegate = journal
coder2.startDelegate = journal
coder1.stopDelegate = journal
coder2.stopDelegate = journal

coder1.StartCoding(time: "3:50", valueOfCode: 512)
coder1.StartCoding(time: "2:50", valueOfCode: 265)
coder2.StartCoding(time: "6:50", valueOfCode: 1230)

coder1.EndCoding()
coder2.EndCoding()

print(journal.array)





//Задача: вывести в консоль сообщения - "разработка началась. пишем код" и "работа закончена. Сдаю в тестирование".









