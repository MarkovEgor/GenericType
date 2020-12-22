import UIKit

protocol Storage {
    associatedtype Item
    func store(item: Item)
    func pay(index: Int) -> Item
}

class Main<Item>: Storage {
    var items: [Item] = [Item]()
 
    func store(item: Item) {
        items.append(item)
    }
 
    func pay(index: Int) -> Item {
        return items[index]
    }
}


struct Book {
    var title = ""
    var author = ""
}


struct Food {
    var title = ""
    var kitchen = ""
}

let book = Main<Book>()
book.store(item: Book(title: "1984", author: "Джордж Оруэлл"))
book.store(item: Book(title: "О дивный новый мир", author: "Олдос Хаксли"))
print(book.pay(index: 1).title)

let food = Main<Food>()
food.store(item: Food(title: "Доширак", kitchen: "Китайская"))
food.store(item: Food(title: "Пельмени", kitchen: "Руская"))
print(food.pay(index: 1).title)
