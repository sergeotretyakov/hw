import Cocoa

// Перечисления

enum VehTypes {
    case car, truck
}

enum EngineState {
    case on, off
}

enum WindowsState {
    case opened, closed
}

enum CargoAct {
case load
case unload
}

enum CargoAct1 {
    case load(weight: Int)
    case unload(weight: Int)
}
    
// структуры

struct Car  {
    var type = VehTypes.car
    var brand: String
    var year: Int
    var cargoVolume: Int
    var engState: EngineState
    var winState: WindowsState
    var filledVolume: Int
    
    init(type: VehTypes, brand: String, year: Int, cargoVolume: Int, engState: EngineState, winState: WindowsState, filledVolume: Int) {
        self.type = type
        self.brand = brand
        self.year = year
        self.cargoVolume = cargoVolume
        self.engState = engState
        self.winState = winState
        self.filledVolume = filledVolume
    }
    
    mutating func changeEngineState() {
        if engState == .off {
            self.engState = .on
        } else {
            self.engState = .off
        }
    }
    
    mutating func changeWindowsState() {
        if winState == .closed {
            self.winState = .opened
        } else {
            self.winState = .closed
        }
    }
    
    func printCar() {
        print("Тип авто: \(self.type), Бренд: \(self.brand), Год выпуска:  \(self.year), Вместимость: \(self.cargoVolume), Статус двигателя: \(self.engState), Статус окон: \(self.winState), Заполненный объем: \(self.filledVolume)")
    }
    
}

struct Truck  {
     var type = VehTypes.truck
     var brand: String
     var year: Int
     var cargoVolume: Int
     var engState: EngineState
     var winState: WindowsState
     var filledVolume: Int
     
    init(type: VehTypes, brand: String, year: Int, cargoVolume: Int, engState: EngineState, winState: WindowsState, filledVolume: Int) {
        self.type = type
        self.brand = brand
        self.year = year
        self.cargoVolume = cargoVolume
        self.engState = engState
        self.winState = winState
        self.filledVolume = filledVolume
    }
    
    mutating func changeFilledVolume(action n: CargoAct, weight: Int) {
             
            switch n {
            case .load:
                return self.filledVolume = self.filledVolume + weight
            case .unload:
                return self.filledVolume = self.filledVolume - weight

        }
    }
    //а это вариант того же но чисто через enum
    mutating func changeFilledVolume1(action n: CargoAct1) {
             
            switch n {
            case .load(let weight):
                return self.filledVolume = self.filledVolume + weight
            case .unload(let weight):
                return self.filledVolume = self.filledVolume - weight

        }
    }
    
    func printTruck() {
        print("Тип авто: \(self.type), Бренд: \(self.brand), Год выпуска:  \(self.year), Вместимость: \(self.cargoVolume), Статус двигателя: \(self.engState), Статус окон: \(self.winState), Заполненный объем: \(self.filledVolume)")
    }

}

// экземпляр структуры - машина

var carNissan = Car(type: .car, brand: "Nissan", year: 2016, cargoVolume: 20, engState: .on, winState: .closed, filledVolume: 10)

carNissan.changeEngineState()
carNissan.changeWindowsState()
carNissan.printCar()

// экземпляр структуры - грузовик

var truckMann = Truck(type: .truck, brand: "Mann", year: 2010, cargoVolume: 400, engState: .off, winState: .opened, filledVolume: 200)

truckMann.changeFilledVolume(action: .load, weight: 10)
truckMann.changeFilledVolume(action: .unload, weight: 20)
truckMann.changeFilledVolume1(action: .load(weight: 10))
truckMann.printTruck()


