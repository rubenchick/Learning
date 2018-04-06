//: A UIKit based Playground for presenting user interface
  
import UIKit
//ДЗ Developers


//// ДЗ Course
//Сделаем с вами небольшую игру
//
//1. Создайте тип Комната. У комнаты есть размеры W на H. И создайте тип Персонаж. У него есть координата в комнате X и Y. Реализуйте функцию, которая красивенько текстом будет показывать положение персонажа в комнате
//
//2. Персонажу добавьте метод идти, который принимает энумчик лево, право, верх, вниз
//Этот метод должен передвигать персонажа. Реализуйте правило что персонаж не должен покинуть пределы комнаты. Подвигайте персонажа и покажите это графически
//
//3. Создать тип Ящик. У ящика также есть координата в комнате X и Y. Ящик также не может покидать пределы комнаты и ящик также должен быть распечатан вместе с персонажем в функции печати.
//
//4. Теперь самое интересное, персонаж может двигать ящик, если он стоит на том месте, куда персонаж хочет попасть. Главное что ни один объект не может покинуть пределы комнаты. Подвигайте ящик :)
//
//5. Добавьте точку в комнате, куда надо ящик передвинуть и двигайте :)
//
//Для суперменов: можете добавить массив ящиков и можете сделать консольное приложение

struct Coordinates {
    var x : Int
    var y : Int
}
enum Move {
    case Left
    case Right
    case Up
    case Down
}

class Room {
    var widht  : Int
    var length : Int
    var hero : Coordinates
    var box  : Coordinates
    var finishPoint : Coordinates

    func move(_ move: Move) {
        switch move {
            case .Down : do {
                if (hero.y != 2) {
                    if (box.y == hero.y-1) && (box.x == hero.x) {
                        if (box.y != 2) {
                            self.hero.y -= 1
                            self.box.y  -= 1
                            printRoom()
                        }
                    }
                    else {
                        self.hero.y -= 1
                        printRoom()
                    }
                }
            }
            case .Up : do {
                if (hero.y != length-1) {
                    if (box.y == hero.y+1) && (box.x == hero.x) {
                        if (box.y != length-1) {
                            self.hero.y += 1
                            self.box.y  += 1
                            printRoom()
                        }
                    }
                    else {
                        self.hero.y += 1
                        printRoom()
                    }
                }
            }
            case .Left : do {
                if (hero.x != 2) {
                    if (box.x == hero.x-1) && (box.y == hero.y) {
                        if (box.x != 2) {
                            self.hero.x -= 1
                            self.box.x  -= 1
                            printRoom()
                        }
                    }
                    else {
                        self.hero.x -= 1
                        printRoom()
                    }
                }
            }
            case .Right : do {
                if (hero.x != widht-1) {
                    if (box.x == hero.x+1) && (box.y == hero.y) {
                        if (box.x != widht-1) {
                            self.hero.x += 1
                            self.box.x  += 1
                            printRoom()
                        }
                    }
                    else {
                        self.hero.x += 1
                        printRoom()
                    }
                }
            }
        }
        if finishPoint.x == box.x && finishPoint.y == box.y {print("WIN")}
    }
    func whatIsSymbol (_ x: Int,_ y: Int) -> (String) {
        switch (x,y) {
            case (1,1...length),(widht,1...length),(1...widht,1),((1...widht,length))    : return "Ⓜ️"
            case (hero.x,hero.y)               : return "😃"
            case (box.x,box.y)                 : return "🎁"
            case (finishPoint.x,finishPoint.y) : return "🛒"
            default:
                return "⭕️"
        }
        
    }
    func printRoom() {
        for  j in stride(from: length, through: 1, by: -1) {
            for i in 1...widht {
                print(whatIsSymbol(i, j), terminator: "")
            }
            print("")
        }
        print("")
    }
    init(widht : Int,length : Int,hero : Coordinates,box: Coordinates,finishPoint : Coordinates){
        self.widht  = widht
        self.length = length
        self.hero   = hero
        self.box    = box
        self.finishPoint = finishPoint
    }
}
var roomFirst = Room(widht: 15, length: 10, hero: Coordinates(x: 6, y: 7), box: Coordinates(x: 6, y: 8), finishPoint: Coordinates(x: 5, y: 6))
roomFirst.printRoom()
roomFirst.move(.Right)
roomFirst.move(.Up)
roomFirst.move(.Left)
roomFirst.move(.Up)
roomFirst.move(.Left)
roomFirst.move(.Down)
roomFirst.move(.Down)




