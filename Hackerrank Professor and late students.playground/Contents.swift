//: A UIKit based Playground for presenting user interface
  
import UIKit
import Foundation


//let countTest = readLine()!
let countTest = 2

var arrayTemp : [Int]
var arrayTime : [Int]

var everyBodyStudent, noLateStudent : Int

var studenNoLate: Int

for _ in 1...countTest {
    //arrayTemp = readLine()!.components(separatedBy: " ").map{ Int($0)!}
    arrayTemp = [4,3]

    everyBodyStudent = arrayTemp[0]
    noLateStudent = arrayTemp[1]
    //arrayTime = readLine()!.components(separatedBy: " ").map{ Int($0)!}
    arrayTime = [0, -1, 2, 1]
    studenNoLate = 0
    for j in arrayTime {
        if j <= 0 { studenNoLate += 1 }
    }
    print(studenNoLate >= noLateStudent ? "NO" : "YES" )

}

