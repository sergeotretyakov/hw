import UIKit

struct Queue<T> {
    
    var myArray = [T]()
    
    mutating func add(_ element: T) {
          myArray.append(element)
    }
    
    mutating func remove() -> T? {
         if !myArray.isEmpty {
           return myArray.removeFirst()
         } else {
           return nil
         }
    }
}

var collection = Queue<Int>()
collection.add(1)
collection.add(2)
collection.remove()

extension Queue {
    
//тут добавлю функцию высшего порядка позже
        
}

//задание со звездочкой - почему-то xCode виснет или выполняет очень долго (
extension Queue {
    
    subscript(index: Int) -> T? {
        return index >= 0 && index <= myArray.count ? self[index] : nil
    }
    
}

collection[0]
collection[1]
collection[5]
