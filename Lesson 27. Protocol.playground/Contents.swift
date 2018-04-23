//: A UIKit based Playground for presenting user interface
// Protocol
import UIKit
// ДЗ Course
//1. Объявить протокол Food, который будет иметь проперти name (только чтение) и метод taste(), который будет выводить текст со вкусовыми ощущениями

protocol Food {
    var name: String { get }
    func taste() -> String
}

protocol Storable {
    var expired: Bool { get }
    var daysToExpire : Int { get }
}

//2. Все продукты разных типов, которые вы принесли из супермаркета, находятся в сумке (массив) и все, как ни странно, реализуют протокол Food. Вам нужно пройтись по сумке, назвать предмет и откусить кусочек. Можете отсортировать продукты до имени. Используйте для этого отдельную функцию, которая принимает массив продуктов
class Apple: Food {
    var name: String
    
    func taste() -> String {
        return "Very acidly"
    }
    init(name: String) {
        self.name = "apple " + name
    }
}

class Milk: Food, Storable{
    
    var expired: Bool
    
    var name: String {
        get {
            return "milk " + brand + " " + String(daysToExpire) + " day to Expire"
        }
    }
    var daysToExpire: Int
    
    func taste() -> String {
        return "It is a perfect"
    }
    
    var brand: String = ""
    init(expired: Bool,daysToExpire: Int) {
        self.expired = expired
        self.daysToExpire = daysToExpire
    }
    
}
class Cheese: Food, Storable {
    var expired: Bool
    
    var name: String
    
    var daysToExpire: Int
    
    func taste() -> String {
        return "It is a terriable"
    }
    
    init(name: String,expired: Bool,daysToExpire: Int) {
        self.name = "cheese " + name + " " + String(daysToExpire) + " day to Expire"
        self.expired = expired
        self.daysToExpire = daysToExpire
    }
}

class Potato: Food {
    var type: String?
    var name: String {
        return type ?? "potato"
    }
    
    func taste() -> String {
        return "So so"
    }
}

var apple = Apple(name: "Antonovka")
var milk = Milk(expired: true, daysToExpire: 0)
milk.brand = "Prostokvasheno"
var milk1 = Milk(expired: false, daysToExpire: 30)
milk1.brand = "Vkusvill"
var cheese = Cheese(name:"Russian",expired: true, daysToExpire: 0)
var cheese2 = Cheese(name:"Parmesan",expired: false, daysToExpire: 5)
var cheese3 = Cheese(name:"Beaufort",expired: false, daysToExpire: 30)
var potato = Potato()
var bag : [Food] = [apple,milk,potato,cheese,milk1,cheese2,cheese3]

func printFoodIn(_ array: [Food]) {
    for value in array {
        print("It is a \(value.name). Taste: \(value.taste())")
    }
}

func sortedFoodIn(bag array: inout [Food]) {
    array.sort { $0.name.lowercased() < $1.name.lowercased() }
}
print("\nBag Unsorted")
printFoodIn(bag)
sortedFoodIn(bag: &bag)
print("\nBag Sorted")
printFoodIn(bag)

//3. Некоторые продукты могут испортиться, если их не положить в холодильник. Создайте новый протокол Storable, он наследуется от протокола Food и содержит еще булевую проперти - expired. У некоторых продуктов замените Food на Storable. Теперь пройдитесь по всем продуктам и, если продукт надо хранить в холодильнике, то перенесите его туда, но только если продукт не испорчен уже, иначе просто избавьтесь от него. Используйте функцию для вывода продуктов для вывода содержимого холодильника
//
var fridge : [Storable & Food] = []

var i = 0
while i < bag.count {
    if let item = bag[i] as? Storable {
        if !item.expired {
            fridge.append(item as! Food & Storable)
        }
        else {
            bag.remove(at: i)
            i -= 1
        }
    }
    i += 1
}

print("\nFridge Unsorted")
printFoodIn(fridge)



//4. Добавьте проперти daysToExpire в протокол Storable. Отсортируйте массив продуктов в холодильнике. Сначала пусть идут те, кто быстрее портятся. Если срок совпадает, то сортируйте по имени.
fridge.sort { (one, two) -> Bool in
    if one.daysToExpire == two.daysToExpire { return one.name < two.name }
    else { return one.daysToExpire < two.daysToExpire }
}
print("\nFridge Sorted")
printFoodIn(fridge)
//

//5. Не все, что мы кладем в холодильник, является едой. Поэтому сделайте так, чтобы Storable не наследовался от Food. Мы по прежнему приносим еду домой, но некоторые продукты реализуют теперь 2 протокола. Холодильник принимает только те продукты, которые еще и Storable. функция сортировки должна по прежнему работать.
























