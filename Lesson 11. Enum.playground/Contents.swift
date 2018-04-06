//: A UIKit based Playground for presenting user interface
  
import UIKit
print("Yes")
//3) Создайте по 1-2 enum разных типов.
//4) Создайте несколько своих enum, названия какие хотите: например, анкета сотрудника - пол, возраст,ФИО, стаж. Используйте switch как в видео.
//5) Создать enum со всеми цветами радуги. Создать функцию, которая содержит названия разных предметов или объектов.
//Пример результата в консоли "apple green", "sun red" и т.д.
//6) Создать функцию, которая выставляет оценки ученикам в школе.
//7) Создать программу, которая "рассказывает" - какие автомобили стоят в гараже.

////3) Создайте по 1-2 enum разных типов.
//enum RainBow0 {
//    case Red
//    case Orange
//    case Yellow
//    case Green
//    case Blue
//    case DarkBlue
//    case Purple
//}
////4) Создайте несколько своих enum, названия какие хотите: например, анкета сотрудника - пол, возраст,ФИО, стаж. Используйте switch как в видео.
//enum SexPerson {
//    case Male
//    case Female
//}
//enum Stuff {
//    case sex(sex: SexPerson)
//    case age(years: Int)
//    enum fio {
//        case FirstName
//        case SecondName
//    }
//    case experience(years: Int)
//}
//var a = Stuff.age(years: 32)
////a = Stuff.sex(sex: .Male)
//var c = Stuff.fio.SecondName
//
//switch a {
//    case .age(let yearsStuff): print("Сотруднику \(yearsStuff) года")
//    case .sex(let sex) where sex == .Male: print("Сотрудник мужчина")
//    case .sex(let sex) where sex == .Female: print("Сотрудник женщина")
//    case .experience(let years):
//        print("Сотрудник работает уже \(years) лет")
//    case .sex( _): break
//}

//switch c {
//    case .FirstName  : print("Имя")
//    case .SecondName : print("Фамилия")
//}


//5) Создать enum со всеми цветами радуги. Создать функцию, которая содержит названия разных предметов или объектов.
//Пример результата в консоли "apple green", "sun red" и т.д.
//enum RainBow {
//    case Red
//    case Orange
//    case Yellow
//    case Green
//    case Blue
//    case DarkBlue
//    case Purple
//}
//
//func printDetail(_ name: String, _ color: RainBow) -> () {
//    print("The \(name) is \(color) color")
//}
//printDetail("Car", .Purple)
//
////6) Создать функцию, которая выставляет оценки ученикам в школе.
//enum Mark {
//    case Excellent
//    case Good
//    case Satisfactory
//    case Bad
//}
//func doMark(_ schoolboy:String,_ mark: Mark ) -> () {
//     print("The \(schoolboy) mark is \(mark)")
//}
//
//doMark("Putin", .Bad)

////7) Создать программу, которая "рассказывает" - какие автомобили стоят в гараже.
//enum Garage: String {
//    case Volvo = "Volvo 90"
//    case Bmw = "BMW model 3 3.0D"
//    case Lada = "Lada Granta"
//    case Zaz = "Zaz 968"
//    static let all = [Volvo, Bmw, Lada, Zaz]
//}
//
//print("В гараже стоят машины:")
//for i  in Garage.all {
//    print(i.rawValue)
//}

// Course
// Вариант 1 От души
////1. Создать энум с шахматными фигруами (король, ферзь и т.д.). Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят), а так же букву и цифру для позиции. Создайте пару фигур с расположением на доске, так, чтобы черному королю был мат :) Поместите эти фигуры в массив фигур
//enum Characteristic {
//    case Black(Character,Int)
//    case White(Character,Int)
//}
//
//enum Pieces {
//    case King(characteristic : Characteristic)
//    case Queen(characteristic : Characteristic)
//    case Rook(characteristic : Characteristic)
//    case Bishop(characteristic : Characteristic)
//    case Knight(characteristic : Characteristic)
//    case Pawn(characteristic : Characteristic)
//}
//let pieceOne = Pieces.King(characteristic: .Black("A", 1))
//let pieceTwo = Pieces.Queen(characteristic: .White("B", 2))
//let pieceThree = Pieces.Rook(characteristic: .White("B", 6))
//
//var arrayPieces: [Pieces] = [pieceOne, pieceTwo, pieceThree]
//
////2. Сделайте так, чтобы энумовские значения имели rawValue типа String. Каждому типу фигуры установите соответствующее английское название. Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение. Используя эту функцию распечатайте все фигуры в массиве.
//
//func printPiece (_ piece: Pieces) -> () {
//    var tempCharacteristic = Characteristic.White("A", 1)
//    switch piece {
//        case .King(let characteristic):
//            print("King")
//            tempCharacteristic = characteristic
//        case .Queen(let characteristic):
//            print("Queen")
//            tempCharacteristic = characteristic
//        case .Rook(let characteristic):
//            print("Rook")
//            tempCharacteristic = characteristic
//        case .Bishop(let characteristic):
//            print("Bishop")
//            tempCharacteristic = characteristic
//        case .Knight(let characteristic):
//            print("Knight")
//            tempCharacteristic = characteristic
//        case .Pawn(let characteristic):
//            print("Pawn")
//            tempCharacteristic = characteristic
//    }
//    switch tempCharacteristic {
//        case .Black(let letter, let digital):
//            print("Color  - Black, Position \(letter,digital)")
//        case .White(let letter, let digital):
//            print("Color  - White, Position \(letter,digital)")
//    }
//}
//
//func printPieces (_ arrayPieces: [Pieces]) -> () {
//    for i in arrayPieces {
//        printPiece(i)
//    }
//}
//printPieces(arrayPieces)
//
//
////Вариант 2. По заданию Tuples + 4 enum
////1.
//
//enum PositionLetter: String {
//    case A = "a"
//    case B = "b"
//    case C = "c"
//    case D = "d"
//    case E = "e"
//    case F = "f"
//    case G = "g"
//    case H = "h"
//}
//enum PositionDigital: String {
//    case One   = "1"
//    case Two   = "2"
//    case Three = "3"
//    case Four  = "4"
//    case Five  = "5"
//    case Six   = "6"
//    case Seven = "7"
//    case Eight = "8"
//}
//
//enum Color: String{
//    case Black = "Black"
//    case White = "White"
//}
//
//enum Pieces2: String {
//    case King = "King"
//    case Queen = "Queen"
//    case Rook = "Rook"
//    case Bishop = "Bishop"
//    case Knight = "Knight"
//    case Pawn = "Pawn"
//}
//
//var tuplesPieces,pieceOneV2, pieceTwoV2, pieceThreeV2 : (piece: Pieces2, color:  Color, positionL: PositionLetter, positionD: PositionDigital)
//var NewType : (piece: Pieces2, color:  Color, positionL: PositionLetter, positionD: PositionDigital)
//pieceOneV2 = (piece: .King, color:  .Black, positionL: .A, positionD: .One)
//pieceTwoV2 = (piece: .Queen , color:  .White, positionL: .B, positionD: .Two)
//pieceThreeV2 = (piece: .Rook, color:  .White, positionL: .B, positionD: .Six)
//
//var arrayPiecesV2 = [pieceOneV2, pieceTwoV2, pieceThreeV2]
//arrayPiecesV2.append((piece: .Pawn, color:  .Black, positionL: .F, positionD: .Five))
//arrayPiecesV2.append((piece: .Pawn, color:  .White, positionL: .G, positionD: .Five))
//
//// №2
////2. Сделайте так, чтобы энумовские значения имели rawValue типа String. Каждому типу фигуры установите соответствующее английское название. Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение. Используя эту функцию распечатайте все фигуры в массиве.
//
//func printPieceV2(_ name: (piece: Pieces2,color:  Color,positionL: PositionLetter, positionD: PositionDigital))-> () {
//    print("Фигура \(name.piece.rawValue) \(name.color.rawValue) стоит на позиции \(name.positionL.rawValue)\(name.positionD.rawValue)")
//}
//
//func printArrayPieceV2(_ name: [(piece: Pieces2, color:  Color, positionL: PositionLetter, positionD: PositionDigital)])-> ()
//{
//    for i in name {
//        printPieceV2(i)
//    }
//}
//printArrayPieceV2(arrayPiecesV2)
//
////3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску. Если клетка не содержит фигуры, то используйте белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)
//func findSimbol(_ piece: (piece: Pieces2,color:  Color))->(String) {
//    switch piece.piece {
//        case .King: return piece.color == .Black ? "♚" : "♔"
//        case .Queen: return piece.color == .Black ? "♛" : "♕"
//        case .Bishop: return piece.color == .Black ? "♝":"♗"
//        case .Knight: return piece.color == .Black ? "♞":"♘"
//        case .Pawn: return piece.color == .Black ? "♟" : "♙"
//        case .Rook: return piece.color == .Black ? "♜":"♖"
//    }
//}
//func printChessboard (_ name: [(piece: Pieces2, color:  Color, positionL: PositionLetter, positionD: PositionDigital)])-> () {
//    let letterName = "  a b c d e  f g h"
//    var dictPiece : [String:(Pieces2,Color)] = [:]
//    for piece in name {
//        dictPiece.updateValue((piece.piece,piece.color), forKey: (piece.positionL.rawValue+piece.positionD.rawValue))
//    }
//
//    var k = 0
//    let alphabet = ["a","b","c","d","e","f","g","h"]
//    for j in 1...8 {
//        print(9-j, terminator: "")
//        k == 0 ? (k = 1) : (k = 0)
//        for i in 1...8 {
//            if dictPiece[alphabet[i-1]+String(9-j)] == nil {
//                i % 2 == k ? print("⬛️", terminator: "") : print("⬜️", terminator: "")
//            }
//            else {
//                print(findSimbol(dictPiece[alphabet[i-1]+String(9-j)]!), terminator: "")
//            }
//               }
//        print("")
//    }
//    print(letterName)
//}
//printChessboard(arrayPiecesV2)



//4. Создайте функцию, которая будет принимать шахматную фигуру и тюпл новой позиции. Эта функция должна передвигать фигуру на новую позицию, причем перемещение должно быть легальным: нельзя передвинуть фигуру за пределы поля и нельзя двигать фигуры так, как нельзя их двигать в реальных шахматах (для мегамонстров программирования). Вызовите эту функцию для нескольких фигур и распечатайте поле снова.
