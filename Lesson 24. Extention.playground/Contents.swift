//Extension

import UIKit
////3)Расширить String, чтобы принимал сабскрипт вида s[0..<3] и мог также устанавливать значения используя его
//extension String {
//    subscript (index: Int)-> String {
//        get {   return self }
//        // меняем символы в строке
//        set {
//            if self.count >= index {
//                var numberSymbol = 0
//                var newString = ""
//                for symbol in self {
//                    numberSymbol += 1
//                    if index != numberSymbol { newString += String(symbol) }
//                    else { newString += newValue }
//                }
//                self = newString
//            }
//        }
//    }
//
//}
//var txt = "Developers"
//txt[5] = "r" // замена символа
//print(txt)   // Deveropers
//
////4) Расширить Int и добавить 3 метода возведение в квадрат, куб, степень
//extension Int {
//    func square()->Int {
//        return self * self
//    }
//    func cube()-> Int {
//        return self.square() * self
//    }
//    func toThePower(of number: Int)-> Int {
//        var temp = self
//        if number > 1  {
//            for _ in 2...number {
//                temp = temp * self
//            }
//        }
//        return temp
//    }
//}
//print(5.square())          // 25
//print(3.cube())            // 27
//print(2.toThePower(of: 8)) // 256
//
////5)Расширить еще 3 структуры на свой вкус и в коментах обосновать для чего это было сделано
//// Int -> Bool . Проверка простое или нет
//extension Int {
//    func isSimple()->Bool {
//        var number = self > 0 ? (self - 1) : ((-self) - 1)
//        var simple = true
//        while (number > 1) && (simple) {
//            if self % number == 0 { simple = false}
//            number -= 1
//        }
//        return simple
//    }
//}
//349.isSimple() // true
//
//// Int -> Int перевод в двоичную систему
//extension Int {
//    func converToBinary() -> Int {
//        var number = self
//        var numberS = ""
//        while number / 2 > 0 {
//            numberS.insert(Character(String(number % 2)), at: numberS.startIndex)
//            number = number / 2
//            print(number)
//        }
//        numberS.insert(Character(String(number % 2)), at: numberS.startIndex)
//        return (Int(numberS))!
//   }
//}
//var num = 1978
//num.converToBinary() // 11110111010
//
//// String -> String. Удаление части строки
//extension String {
//    func delete(at start:Int,to finish:Int)->(String) {
//        var numberSymbol = 0
//        var newString = ""
//        if start <= finish {
//            for symbol in self {
//                numberSymbol += 1
//                if (numberSymbol >= start) && (numberSymbol <= finish) {
//
//                }
//                else {
//                    newString += String(symbol)
//                }
//            }
//        }
//        else {  newString = self  }
//        return newString
//    }
//}
//var text = "Class Atrium"
//print(text.delete(at: 4, to: 5)) // Cla Atrium
//
////6)Добавьте проперти, которое возвращает количество символов в числе
//extension Int {
//    func count()->Int {
//        var count = 1
//        var number = self > 0 ? self : -self
//        while number > 10 {
//            number = number / 10
//            count += 1
//        }
//        return count
//    }
//}
//(-9857).count() // 4
//
////7)Добавить метод который говорит число положительное или отрицательное
//extension Int {
//    func aboveZero()-> Bool {
//        return self > 0 ? true : false
//    }
//}
//56.aboveZero() // true

//// ДЗ Course
//1. Создайте расширение для Int с пропертисами isNegative, isPositive, bool
extension Int{
    var isNegative : Bool {
        return self < 0  ? true : false
    }
    var isPositive : Bool {
        return self > 0  ? true : false
    }
    
    //2. Добавьте проперти, которое возвращает количество символов в числе
    var count : Int {
        var number = self.isPositive ? self : -self
        var count = 1
        while number / 10 > 0 {
            number /= 10
            count += 1
        }
        return count
    }
    
    //3. Добавьте сабскрипт, который возвращает символ числа по индексу:
    // без string
    subscript(index: Int) -> Int {
    get {
        var number = self.isPositive ? self : -self
        if self.count  <= index { return self }
        else {
            var count = 0
            var numberX : Int = 0
            while number / 10 > 0 {
                if count == index { numberX = (number-(number/10)*10) }
                number /= 10
                count += 1
            }
            if count == index { numberX = (number-(number/10)*10) }
            return numberX
        }
    }
    set {
        var number = self.isPositive ? self : -self
        if self.count  <= index { self }
        else {
            var count = 0
            var array : [Int] = []
            while number / 10 > 0 {
                array.append( count == index ? newValue : (number-(number/10)*10) )
                number /= 10
                count += 1
            }
            array.append(count == index ? newValue : (number-(number/10)*10) )
            var numX = 0
            for i in (0...count).reversed() {
                numX = numX * 10 + array[i]
            }
            self = self.isPositive ? numX : -numX
        }
    
    }
    }
}
var number = -52435876
number.isNegative // true
number.isPositive // false
number.count      // 8
number[4]         // 3
number[2] = 0
print(number)     // -52435076

//4. Расширить String, чтобы принимал сабскрипт вида s[0..<3] и мог также устанавливать значения используя его

// Вообще не понимаю как делать

//5. Добавить стрингу метод truncate, чтобы отрезал лишние символы и , если таковые были, заменял их на троеточие:
extension String {
    mutating func truncate (_ at:Int) {
        var position = 0
        var newString = ""
        for simbol in self {
            if position < at { newString += String(simbol) }
            position += 1
        }
        self = newString == self ? self : newString + "..."
    }
}

var s = "Hi hi hi"

s.truncate(10) // Hi hi hi
s.truncate(4)  // Hi h...









