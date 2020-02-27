import Cocoa

class Car  {
    var brand: String
    var year: Int
    
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
    
    func printCar() {
        print(String())
    }
}

class TrunkCar: Car {
    
    var cargoVolume: Int
    var filledVolume: Int
    
    init(brand: String, year: Int, cargoVolume: Int, filledVolume: Int) {
        self.cargoVolume = cargoVolume
        self.filledVolume = filledVolume
        super.init(brand: brand, year: year)
    }
    
    enum CargoAct {
        case load(weight: Int)
        case unload(weight: Int)
    }
    
    func changeFilledVolume(action n: CargoAct) {
        switch n {
        case .load(let weight):
            return self.filledVolume = self.filledVolume + weight
        case .unload(let weight):
            return self.filledVolume = self.filledVolume - weight
        }
    }
    
    override func printCar() {
        print("Тип авто: Грузовая машина, Бренд: \(brand), Год выпуска:  \(year), Грузоподъемность: \(self.cargoVolume), Заполненный объем: \(self.filledVolume)")
    }
}

class SportCar: Car {
    
    var maxSpeed: Int
    var weight: Int
       
    init(brand: String, year: Int, maxSpeed: Int, weight: Int) {
        self.maxSpeed = maxSpeed
        self.weight = weight
        super.init(brand: brand, year: year)
    }
       
    enum SportAct {
        case start(speed: Int)
        case stop
    }
    
    func readyGo(action n: SportAct) -> String {
        switch n {
        case .start(let speed):
            return "Поехали до \(speed) км/ч!"
        case .stop:
            return "СТООООП!"
        }
    }
    
    override func printCar() {
        print("Тип авто: Спортивная машина, Бренд: \(brand), Год выпуска:  \(year), Максимальная скорость: \(self.maxSpeed), Вес: \(self.weight)")
    }
    
}

var carNissan = SportCar(brand: "Nissan", year: 2016, maxSpeed: 200, weight: 1300)

carNissan.readyGo(action: .start(speed: 100))
carNissan.readyGo(action: .stop)
carNissan.printCar()

var truckMann = TrunkCar(brand: "Mann", year: 2010, cargoVolume: 500, filledVolume: 200)

truckMann.changeFilledVolume(action: .load(weight: 10))
truckMann.changeFilledVolume(action: .unload(weight: 20))
truckMann.printCar()
