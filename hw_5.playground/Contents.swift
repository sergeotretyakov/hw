import Cocoa


//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести сами объекты в консоль.

protocol Car {
    
    var brand: String { get }
    var year: Int { get }
    var doors: String { get set }
    var engine: String { get set }
    
    func doorState() -> String
    func engineState() -> String
    func printCar()
    
}

extension Car {
    
    mutating func doorState() -> String {
        if(doors == "Open") {
            doors = "Closed"
        } else {
            doors = "Open"
        }
        return doors
    }
    
    mutating func engineState() -> String {
        if(engine == "Start") {
            engine = "Stop"
        } else {
            engine = "Start"
        }
        return engine
    }

    func printCar() {
        print(String())
    }
}

class truncCar: Car {

    var cargoVolume: Int
    var brand: String
    var year: Int
    var doors: String
    var engine: String
    
    init(brand: String, year: Int, doors: String, engine: String, cargoVolume: Int) {
        self.brand = brand
        self.year = year
        self.doors = doors
        self.engine = engine
        self.cargoVolume = cargoVolume
    }
    
    func engineState() -> String {
        if(engine == "Start") {
            engine = "Stop"
        } else {
            engine = "Start"
        }
        return engine
    }
    
    func doorState() -> String {
        if(doors == "Open") {
            doors = "Closed"
        } else {
            doors = "Open"
        }
        return doors
    }
    
    func printCar() {
        print("Тип авто: Спортивная машина, Бренд: \(self.brand), Год выпуска: \(self.year), Грузоподъемность: \(self.cargoVolume), Статус дверей: \(self.doors), Статус двигателя: \(self.engine)")
    }
    
}

extension truncCar: CustomStringConvertible {
   
    public var description: String {
        "Тип авто: Спортивная машина, Бренд: \(self.brand), Год выпуска: \(self.year), Грузоподъемность: \(self.cargoVolume)"
    }
    
}

class sportCar: Car {

    var maxSpeed: Int
    var brand: String
    var year: Int
    var doors: String
    var engine: String
    
    init(brand: String, year: Int, doors: String, engine: String, maxSpeed: Int) {
        self.brand = brand
        self.year = year
        self.doors = doors
        self.engine = engine
        self.maxSpeed = maxSpeed
    }
    
    func engineState() -> String {
        if(engine == "Start") {
            engine = "Stop"
        } else {
            engine = "Start"
        }
        return engine
    }
    
    func doorState() -> String {
        if(doors == "Open") {
            doors = "Closed"
        } else {
            doors = "Open"
        }
        return doors
    }
    
    func printCar() {
        print("Тип авто: Спортивная машина, Бренд: \(self.brand), Год выпуска: \(self.year), Максимальная скорость: \(self.maxSpeed), Статус дверей: \(self.doors), Статус двигателя: \(self.engine)")
    }
    
}

extension sportCar: CustomStringConvertible {
   
    public var description: String {
        "Тип авто: Спортивная машина, Бренд: \(self.brand), Год выпуска: \(self.year), Максимальная скорость: \(self.maxSpeed)"
    }
    
}

var mann = truncCar(brand: "Mann", year: 2015, doors: "Closed", engine: "Stop", cargoVolume: 100)
mann.doorState()
mann.engineState()
mann.printCar()
print(mann)

var bmw = sportCar(brand: "BMW", year: 2019, doors: "Closed", engine: "Stop", maxSpeed: 200)
bmw.doorState()
bmw.engineState()
bmw.printCar()
print(bmw)

