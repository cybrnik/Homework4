import UIKit

enum Window{
    case open,close
}

enum Engine{
    case started,stoped
}

class Car{
    let brand: String
    let year: Int
    let trunkVolume: Int
    var engineIsStarted: Engine
    var windowIsOpen: Window
    init(brand: String, year: Int, trunkVolume: Int,engineIsStarted: Engine, windowIsOpen: Window) {
        self.brand = brand
        self.year = year
        self.trunkVolume = trunkVolume
        self.engineIsStarted = engineIsStarted
        self.windowIsOpen = windowIsOpen
    }
    func filledVolumeOfTrunk(_ value: Int) -> Int{
        return self.trunkVolume - value
    }
    func openWindow(){
        windowIsOpen = .open
 
    }
    func closeWindow(){
        windowIsOpen = .close
    }
    func startEngine(){
        engineIsStarted = .started
 
    }
    func stopEngine(){
        engineIsStarted = .stoped
    }
    func setEngineState(_ value: Engine){
        engineIsStarted = value
    }
    func setWindowState(_ value: Window){
        windowIsOpen = value
    }
    func printInfo(){
        print("Brand is: \(brand); Year is \(year); Trunk volume is \(trunkVolume); Engine is \(engineIsStarted); Window is: \(windowIsOpen)")
    }
}
enum Hatch{
    case open,closed
}
class TrunkCar: Car{
    var countOfWheels: Int
    var hatchIs: Hatch
    init(brand: String, year: Int, trunkVolume: Int, engineIsStarted: Engine, windowIsOpen: Window,countOfWheels: Int,hatchIs:Hatch) {
        self.hatchIs = hatchIs
        self.countOfWheels = countOfWheels
        super.init(brand: brand, year: year, trunkVolume: trunkVolume, engineIsStarted: engineIsStarted, windowIsOpen: windowIsOpen)
    }
    func changeStateOfHatch(state:Hatch){
        self.hatchIs = state
        print("State has been changed to \(state)")
    }
    override func printInfo() {
        print("Brand is: \(brand), Year is \(year), Trunk volume is \(trunkVolume), Engine is \(engineIsStarted), Window is: \(windowIsOpen), Count of wheels: \(countOfWheels), Hatch is: \(hatchIs)")
    }
}

enum Spoiler{
    case exist,notexist
}
enum Mode{
    case sport,normal,eco
}

class SportCar: Car{
    var spoilerIs: Spoiler
    var mode: Mode
    init(brand: String, year: Int, trunkVolume: Int, engineIsStarted: Engine, windowIsOpen: Window,spoilerIs:Spoiler,mode:Mode) {
        self.spoilerIs = spoilerIs
        self.mode = mode
        super.init(brand: brand, year: year, trunkVolume: trunkVolume, engineIsStarted: engineIsStarted, windowIsOpen: windowIsOpen)
    }
    func changeMode(mode: Mode) {
        self.mode = mode
        print("Mode has been changed to \(mode)")
    }
    override func printInfo() {
        print("Brand is: \(brand), Year is \(year), Trunk volume is \(trunkVolume),Engine is \(engineIsStarted), Window is: \(windowIsOpen), Spoiler is \(spoilerIs)")
    }
}

var manCar = TrunkCar(brand: "Man", year: 2018, trunkVolume: 1000, engineIsStarted: .started, windowIsOpen: .close, countOfWheels: 6, hatchIs: .open)
manCar.printInfo()
manCar.changeStateOfHatch(state: .closed)
manCar.printInfo()

var bmwCar = SportCar(brand: "BMW", year: 2015, trunkVolume: 600, engineIsStarted: .stoped, windowIsOpen: .close, spoilerIs: .notexist, mode: .eco)
bmwCar.printInfo()
bmwCar.changeMode(mode: .sport)
bmwCar.printInfo()
