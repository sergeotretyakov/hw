import UIKit

//Идея ДЗ - кот хочет выйти на улицу гулять, но тупит

enum CatErrors: Error {
    case catDoesntMove     // дверь открыли но он не выходит
}

class Cat {
  
    var doorStatusIsClosed: Bool = true
    var catLocationInside: Bool = true
    
    func purrPurrToOpenTheDoor() {
        doorStatusIsClosed = false
    }
    
    func catStatus() throws -> String {
        guard doorStatusIsClosed == true && catLocationInside == false else {
            throw CatErrors.catDoesntMove
        }
        return String("Кот гуляет")
    }
    
    func kickTheCat() {
        catLocationInside = false
        doorStatusIsClosed = true
    }
}
    
let cat = Cat()
cat.purrPurrToOpenTheDoor()
    
do {
    try cat.catStatus()
} catch CatErrors.catDoesntMove {
    print("Кот завис, пнуть")
} catch {
    print(error.localizedDescription)
}

cat.kickTheCat() // выпинываем кота и закрываем дверь

try cat.catStatus()

