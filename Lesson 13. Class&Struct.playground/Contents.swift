//: A UIKit based Playground for presenting user interface
// Class & Struct
import UIKit
//2) Создать класс родитель и 2 класса наследника.
//class Detail {
//    var length: Int = 20
//    var width: Int = 30
//    var material: String = "Stone"
//}
//
//class Cup: Detail {
//    enum Color { //не заработало
//        case Red
//        case White
//        case Black
//    }
//    var print: Bool = false
//}
//class Cube: Detail {
//    func V(_ weight: Int,_ density: Double )->(Double) {
//      return Double(weight)*density
//    }
//    func V(_ higth: Int) -> (Double)
//    {
//        return Double(higth * self.length * self.width)
//    }
//}
//var myCup = Cup()
//myCup.print = true
//myCup.length = 59
//var cubeRubik = Cube()
//var cubeRubik2 = Cube()
//cubeRubik2.V(4)
//cubeRubik.length = 54
//cubeRubik.V(2, 50.05)
//cubeRubik.V(4)
//
////3) Написать программу, в которой создать класс *House* в нем несколько свойств - *width*, *height* и несколько методов - *create*(выводит произведение свойств),*destroy*(отображает что дом уничтожен)и т.п.
//
//class House {
//    var width: Int
//    var height: Int
//    func create()-> (Int) {
//        return self.width*self.height
//    }
//    func destroy()->() {
//        print("House is crash")
//    }
//    init(_ width: Int,_ height: Int){
//        self.width = width
//        self.height = height
//    }
//}
//
//let nineLevelHouse = House(15,30)
//nineLevelHouse.create()
//
////4) Создайте класс с методами, которые сортируют массив учеников.
//class SchoolJourney {
//    var FIO: [String]=[]
//    func addSchoolBoy(_ newSchoolBoy:String)->() {
//        FIO.append(newSchoolBoy)
//        FIO.sort()
//    }
////    init (_ FIO:String,_ level: Int){
////        self.FIO = FIO
////        self.level = level
////    }
//}
//var school199
//    = SchoolJourney()
//
//school199.FIO=["Dima","Petr"]
//print(school199.FIO)
//school199.addSchoolBoy("Olga")
//print(school199.FIO)
//school199.addSchoolBoy("Zakchar")
//print(school199.FIO)
//school199.addSchoolBoy("Anton")
//print(school199.FIO)
//
//
////5) Написать свою структуру и пояснить в комментариях - чем отличаются структуры от классов.
//class Dom {
//    var height: Int
//    var wedth: Int
//    init (_ height:Int,_ wedth:Int){
//        self.height = height
//        self.wedth = wedth
//    }
//}
//var d = Dom(14,12)
//print("Класс ссылочный тип")
//print(d.height) // 14
//var b = d
//print(b.height) // 14
//b.height = 10
//print(b.height) // 10
//print(d.height) // 10!!!!
//
//print("___________")
//print("Структура копирует")
//struct DomS {
//    var height: Int
//    var wedth: Int
//}
//var dS = DomS(height: 14, wedth:12)
//print(dS.height) // 14
//var bS = dS
//print(bS.height) // 14
//bS.height = 10
//print(bS.height) // 10
//print(dS.height) // 14!!!!

//Дополнительно(на закрепление всех пройденных тем):
//Напишите простую программу, которая называет комбинации в покере.
//1) Записываем комбинации в массив.
//2) Если определённая комбинация - выводим соответствующую запись в print.
//
//Результат в консоли примерно такой:
//"У вас бубновый стрит флеш ".
//Подсказки:
//- для мастей можно использовать перечисления(enum),
//- В зависимости от комбинации - в консоли печатаем тот или иной ответ.
//- Комбинации можно взять отсюда:
//http://www.russiapokernews.com/poker-hand-ranking
// ♠️♣️♥️♦️ Ace King Queen Jack Clubs Spades Hearts Diamonds
// Royal flush / Straight flush / Four of a kind / Full house / Flush / Straight / Set / Two pairs / One pairs

//Дополнительно(на закрепление всех пройденных тем):
//Напишите простую программу, которая называет комбинации в покере.
//enum Suit: String {
//    case diamonds = "♦️"
//    case hearts   = "♥️"
//    case spades   = "♠️"
//    case clubs    = "♣️"
//}
//enum Value: String{
//    case ace   = "A"
//    case king  = "K"
//    case queen = "Q"
//    case jack  = "J"
//    case ten   = "10"
//    case nine  = "9"
//    case eight = "8"
//    case seven = "7"
//    case six   = "6"
//    case five  = "5"
//    case four  = "4"
//    case tree  = "3"
//    case two   = "2"
//}
//
//
//class Cards {
//    var combination: [(Value,Suit)] = []
//    func addCard(_ card:(Value,Suit))->() {
//       combination.append(card)
//    }
//    func speakeCombination() {
//        if combination.count < 5 { print("Нехватает карт, для определения комбинации")}
//        else if combination.count > 5 { print("Слишком много карт на руке")}
//        else {
//            var arrayValue = Array(repeating: 0, count: 13)
//            var arraySuit = Array(repeating: 0, count: 4)
//            for card in combination {
//                let (val,sui) = card
//                switch val {
//                    case .ace  : arrayValue[0] += 1
//                    case .king : arrayValue[1] += 1
//                    case .queen: arrayValue[2] += 1
//                    case .jack : arrayValue[3] += 1
//                    case .ten  : arrayValue[4] += 1
//                    case .nine : arrayValue[5] += 1
//                    case .eight: arrayValue[6] += 1
//                    case .seven: arrayValue[7] += 1
//                    case .six  : arrayValue[8] += 1
//                    case .five : arrayValue[9] += 1
//                    case .four : arrayValue[10] += 1
//                    case .tree : arrayValue[11] += 1
//                    case .two  : arrayValue[12] += 1
//                }
//                switch sui {
//                    case .spades  : arraySuit[0] += 1
//                    case .clubs   : arraySuit[1] += 1
//                    case .diamonds: arraySuit[2] += 1
//                    case .hearts  : arraySuit[3] += 1
//                }
//            }
//
//
//
//
//
//            if arrayValue.max() == 4 { print("У вас на руках Four of a kind")}
//            var setBool = false
//            if arrayValue.max() == 3 {
//                for i in arrayValue {
//                    if i == 2 { setBool = true }
//                }
//                print(setBool ? "У вас на руках Full house" : "У вас на руках Set")
//            }
//            var setTwoPairs = true
//            if arrayValue.max() == 2 {
//                for i in arrayValue {
//                    if i == 2 {
//                        if setTwoPairs { setTwoPairs = false }
//                        else { setTwoPairs = true }
//                    }
//                }
//                print(setTwoPairs ? "У вас на руках Two pairs" : "У вас на руках One pairs")
//            }
//            var count = 0
//            for i in arrayValue {
//                if i>0 { count += 1 }
//                else   { if count != 5 { count  = 0 }}
//            }
//            var setStraight = false
//            if (count == 5) || ((count == 4) && (arrayValue[0] != 0)) {
//                if arraySuit.max() != 5 { print("У вас на руках Straight")}
//                else {
//                    (print ((arrayValue[0]>0) && (arrayValue[1]>0) ? "У вас на руках Royal flush" : "У вас на руках Straight flush"))
//                }
//                setStraight = true
//            }
//            if (arraySuit.max() == 5) && (!setStraight) {
//                 print("У вас на руках Flash")
//            }
//        }
//    }
//
//
//
//    func printCards() {
//        for card in self.combination {
//            print(card.0.rawValue,card.1.rawValue)
//        }
//    }
//}
//var hand = Cards()
//hand.combination = [(.two,.spades),(.tree,.spades),(.four,.spades),(.five,.spades)]
//hand.addCard((.ace,.spades))
//hand.printCards()
//hand.speakeCombination()

// Variable 2. Course

//1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).

//struct Student {
//    var firstName: String
//    var secondName: String
//    var yearBirthday: Int
//    var averageScore: Float
//}
//let studentOne = Student(firstName: "Ivan",secondName: "Petrov", yearBirthday: 1995, averageScore: 3.8)
//let studentTwo = Student(firstName: "Olga",secondName: "Strelkov", yearBirthday: 1996, averageScore: 4.2)
//let studentThree = Student(firstName: "Max",secondName: "Petrov", yearBirthday: 1994, averageScore: 3.7)
//let studentFour = Student(firstName: "Dmitry",secondName: "Ageev", yearBirthday: 1994, averageScore: 4.3)
//let studentFive = Student(firstName: "Yan",secondName: "Ageev", yearBirthday: 1994, averageScore: 4.3)
//var journal = [studentOne,studentTwo,studentThree,studentFour,studentFive]
//
////2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.
//func printJournal (_ journal: [Student]) -> (){
//
//    for i in 0...journal.count-1 {
//        print("№\(i+1) \(journal[i].firstName) \(journal[i].secondName) \(journal[i].yearBirthday) года рождения, средний бал \(journal[i].averageScore)  ")
//    }
//}
//print("Не сортированный журнал")
//printJournal(journal)
//
////3. С помощью функции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.
//print("\n Сортировка по среднему баллу")
//journal.sort { $0.averageScore > $1.averageScore }
//printJournal(journal)
//
////4. Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, а вы сделайте так чтобы такое произошло, то сравниваются по имени. Распечатайте “журнал”.
//print("\n Сортировка по фамилии")
//journal.sort { ($0.secondName == $1.secondName) ? ($0.firstName < $1.firstName) : ($0.secondName < $1.secondName)
//}
//printJournal(journal)
//
//
////5. Создайте переменную и присвойте ей ваш существующий массив. Измените в нем данные всех студентов. Изменится ли первый массив? Распечатайте оба массива.
//var journal2 = journal
//journal2[0].averageScore = 1.5
//journal2[1].averageScore = 3
//journal2[2].averageScore = 4.5
//journal2[3].averageScore = 5
//journal2[4].averageScore = 2.5
//print("\n Журнал 1")
//printJournal(journal) // Не изменился, так как это не класс, а структура и создается копированием новый экземпляр
//print("\n Журнал 2")
//printJournal(journal2)
//
////6. Теперь проделайте все тоже самое, но не для структуры Студент, а для класса. Какой результат в 5м задании? Что изменилось и почему?
//print("\n Class")
//
//class Student2 {
//    var firstName: String
//    var secondName: String
//    var yearBirthday: Int
//    var averageScore: Float
//    init (_ firstName: String,_ secondName: String,_ yearBirthday: Int,_ averageScore: Float) {
//        self.firstName = firstName
//        self.secondName = secondName
//        self.yearBirthday = yearBirthday
//        self.averageScore = averageScore
//    }
//}
//let studentOneC = Student2("Ivan","Petrov",1995,3.8)
//let studentTwoC = Student2("Olga","Strelkov",1996,4.2)
//let studentThreeC = Student2("Max","Petrov",1994,3.7)
//let studentFourC = Student2("Dmitry","Ageev",1994,4.3)
//let studentFiveC = Student2("Yan","Ageev",1994,4.3)
//var journalC = [studentOneC,studentTwoC,studentThreeC,studentFourC,studentFiveC]
//
//func printJournalC (_ journal: [Student2]) -> (){
//    for i in 0...journal.count-1 {
//        print("№\(i+1) \(journal[i].firstName) \(journal[i].secondName) \(journal[i].yearBirthday) года рождения, средний бал \(journal[i].averageScore)  ")
//    }
//}
//journalC.sort { $0.averageScore > $1.averageScore }
//
//var journal2C = journalC
//journal2C[0].averageScore = 1.5
//journal2C[1].averageScore = 3
//journal2C[2].averageScore = 4.5
//journal2C[3].averageScore = 5
//journal2C[4].averageScore = 2.5
//print("\n Журнал 1")
//printJournalC(journalC) // В обоих экземплярах изменились данные, так как это класс, и просто разные ссылки на одни и теже данные
//print("\n Журнал 2")
//printJournalC(journal2C)

//007. Выполните задание шахмат из урока по энумам используя структуры либо классы

enum PositionLetter: String {
    case A = "a"
    case B = "b"
    case C = "c"
    case D = "d"
    case E = "e"
    case F = "f"
    case G = "g"
    case H = "h"
}
enum PositionDigital: String {
    case One   = "1"
    case Two   = "2"
    case Three = "3"
    case Four  = "4"
    case Five  = "5"
    case Six   = "6"
    case Seven = "7"
    case Eight = "8"
}

enum Color: String{
    case Black, White 
}

enum Pieces: String {
    case King, Queen, Rook, Bishop, Knight, Pawn
}
class Piece {
    var kind  : Pieces
    var color : Color
    var positionL : PositionLetter
    var positionD : PositionDigital
    init (_ kind  : Pieces, _ color : Color, _ positionL : PositionLetter, _ positionD : PositionDigital) {
        self.kind      = kind
        self.color     = color
        self.positionL = positionL
        self.positionD = positionD
    }
}
class ChessBoard {
    var arrayPieces : [Piece]
    func addPiece (_ piece:Piece){
        arrayPieces.append(piece)
    }
    func findSymbol(_ kind:Pieces,_ color:Color)->(String) {
        switch kind {
            case .King:   return color == .Black ? "♚" : "♔"
            case .Queen:  return color == .Black ? "♛" : "♕"
            case .Bishop: return color == .Black ? "♝" : "♗"
            case .Knight: return color == .Black ? "♞" : "♘"
            case .Pawn:   return color == .Black ? "♟" : "♙"
            case .Rook:   return color == .Black ? "♜" : "♖"

        }
    }

    func printChessBoard () {
        var alphabet = ["a","b","c","d","e","f","g","h"]
        print("  a b c d  e f g h")
        var printSymbol = ""
        for j in 1...8 {
            print(9-j, terminator: "")
            for i in 1...8 {
                for piece in arrayPieces {
                    if (piece.positionL.rawValue == alphabet[i-1]) && (piece.positionD.rawValue == String(9-j)) {
                        printSymbol = findSymbol(piece.kind,piece.color)
                    }
                }
                if printSymbol == "" {
                    if (i + j) % 2 == 0 { print("⬛️", terminator: "") }
                    else {print("⬜️", terminator: "")}
                }
                else {
                    print(printSymbol, terminator: "")
                    printSymbol = ""
                }
            }
            print("")
       }
    }

    init (_ arrayPiecesxxx : [Piece]) {
        self.arrayPieces = arrayPiecesxxx
    }
}

let piece = Piece(.King,.Black,.A,.One)
let chessBoard = ChessBoard([])
chessBoard.arrayPieces = [piece,Piece(.Queen,.White,.B,.Two)]
chessBoard.addPiece(Piece(.Rook,.White,.B,.Six))
chessBoard.addPiece(Piece(.Pawn,.Black,.F,.Five))
chessBoard.addPiece(Piece(.Pawn,.White,.G,.Five))
chessBoard.printChessBoard()

