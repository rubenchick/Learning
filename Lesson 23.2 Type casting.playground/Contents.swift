//: A UIKit based Playground for presenting user interface
  
import UIKit
//3)Я как заказчик даю вам разработчику задания сделать :
//a) Библиотеку книг и видео библиотеку фильмов
//b)Возможность добавлять новые книги и фильмы и после добавления должна происходить автоматическая сортировка по алфавиту
//с)Сделать так что б когда я вызову метод(создайте сами его) - "Sort by mood" то фильмы должны отсортировать по настроению:)
//d)И такойже медод придумать для книг :)
class Library {
    var book: [Book]?  = []
    var film: [Film]? = []
    
    func sortedBook(type: TypeSortedBook) {
        if book != nil {
            switch type {
            case .author    : book?.sort(by: { return $0.author > $1.author ? false : true })
            case .difficult : book?.sort(by: { return $0.difficult.hashValue > $1.difficult.hashValue ? false : true })
            }
        }
    }
    
    func sortedFilm(type: TypeSortedFilm) {
        if film != nil {
            switch type {
            case .name    : film?.sort(by: { return $0.name > $1.name ? false : true })
            case .mood    : film?.sort(by: { return $0.mood > $1.mood ? false : true })
            }
        }
    }
    
    func printLibrary() {
        print("\nСписок книг\n")
        for item in book! {
            print("Название - \(item.name), автор - \(item.author), трудность понимания - \(item.difficult) ")
        }
        print("\nСписок фильмов\n")
        for item in film! {
            print("Название - \(item.name), режиссер - \(item.producer), жанр - \(item.mood) ")
        }
    }
    
    func newBook(name: String, author: String, difficult: Difficult)->(){
        book?.append(Book(name: name, author: author, difficult: difficult))
        sortedBook(type: .author)
    }
    
    func newFilm(name: String, producer : String,mood : String)->(){
        film?.append(Film(name: name, producer: producer, mood: mood))
        sortedFilm(type: .name)
    }
}

enum Difficult {
    case Easy
    case Medium
    case Hard
}

enum TypeSortedBook {
    case author
    case difficult
}

enum TypeSortedFilm {
    case name
    case mood
}

class Book {
    var name  : String
    var author: String
    var difficult: Difficult
    init(name: String, author: String, difficult: Difficult){
        self.name = name
        self.author = author
        self.difficult = difficult
    }
}

class Film {
    var name: String
    var producer : String
    var mood : String
    init(name: String, producer : String,mood : String){
        self.name = name
        self.producer = producer
        self.mood = mood
    }
}

var library = Library()
library.newBook(name: "Skazki", author: "Pushkin", difficult: .Easy)
library.newBook(name: "Aristomania", author: "Akunin", difficult: .Hard)
library.newBook(name: "Capital", author: "Marks", difficult: .Hard)
library.newBook(name: "Azazel", author: "Akunin", difficult: .Medium)
library.newFilm(name: "The Boat That Rocked", producer: "Richard Curtis", mood: "Romantic")
library.newFilm(name: "Pulp Fiction", producer: "Quentin Tarantino", mood: "Crime")
library.newFilm(name: "La La Lend", producer: "MisterX", mood: "Musical")
library.newFilm(name: "The Girl with the Dragon Tattoo", producer: "David Fincher", mood: "Detective")
library.newFilm(name: "Azazel", producer: "David Fincher", mood: "Detective")

print("Classic sorting\n")
library.printLibrary()
print("\nSpesial sorting")
library.sortedBook(type: .difficult)
library.sortedFilm(type: .mood)
library.printLibrary()



