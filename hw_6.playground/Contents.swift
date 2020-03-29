import UIKit

// создаем структуру типа Т, содержащую массив с элементами типа Т и вида "очередь" (если хотим чтобы массив был неизменяем нужно вписать private но в данном случае для примеров не буду)

struct Queue<T> {
    
    var myArray = [T]()
    //положить в очередь
    mutating func add(_ element: T) {
        myArray.append(element)
    }
    //взять из очереди
    mutating func remove() -> T? {
         if !myArray.isEmpty {
           return myArray.removeFirst()
         } else {
           return nil
         }
    }
}
//создаем экземпляр структуры типа Int
var collection = Queue<Int>()
collection.add(1) //кладем 1 в массив
collection.add(2) //кладем 2 в массив
collection.remove() //удаляем первый элемент - 1
collection.myArray += [111,222,333,444,555,666] //добавляем еще значения в массив

//замыкание на определение входит ли элемент в массив
let checkIndex: (Int, Int) -> Bool = {
    $0 >= 0 && $0 < $1
}
//проверка как работает
checkIndex(2,collection.myArray.count)

//расширяем структуру функцией сортировки массива, содержащей замыкание
extension Queue {
    
   mutating func filter(array: [Int], predicate: (Int) -> Bool ) -> [Int] {
        var tmpArray = [Int]()               // создает временный массив
        for element in array {
            if predicate(element) {         // вызываем замыкание, чтобы проверить элемент
                tmpArray.append(element)
            }
        }
        return tmpArray                     // возвращаем отфильтрованный массив
    }
}

//тестируем как работает фильтр по массиву
var zzz = collection.filter(array: collection.myArray) { $0 % 2 == 0 }
print(zzz)

//делаем сабскрипт безопасно развертывающий элемент массива в расширении
extension Queue {
    
    subscript(index: Int) -> T? {
         
        get{
            guard collection.myArray.indices.contains(index) else { return nil }
            return myArray[index]
        }
        set(newValue){
            myArray[index] = newValue!
        }
    }
}

//проверяем... ругается но работает, что не так?
print(collection[20])


