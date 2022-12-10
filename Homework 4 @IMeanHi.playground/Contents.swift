import UIKit

//Part 1: Практикуємося у використанні enum:
//●У презентації з теми Enum та в playgrounds файлі були наведені варіанти перерахувань. Ключова ідея Enum – кожен case може стати значенням enum. Якщо значеннями є дні тижня, то enum має називатися “День тижня”
//Спробуйте вигадати два своїх перерахування, кожен з яких повинен відповідати ключовій ідеї, описаній вище
//●У першому з вашого enum додайте RawValue. Вкажіть його тільки для частини case та протестуйте, створивши кілька екземплярів цього enum
//У другому enum додайте функцію, в якій буде switch. Нехай функція повертає якесь значення залежно від значення enum (це може будь-яка функція, на ваш
//розсуд)
//● Створіть enum з асоціативними значеннями для кожного його case.
//Протестуйте його, додавши функцію, яка приймає значення enum і повертає значення, що залежить від прийнятого, за аналогією з прикладом у Playgrounds

enum CoursDuration: Int {
    case firstWeek = 1
    case secondWeek = 2
    case thirdWeek = 3
    case fourthWeek = 4
    case fiveWeek = 5
    case sixthWeek = 6
    case seventhWeek = 7
    case eighthWeek = 8
    case ninthWeek = 9
}

enum MonthOfTheYear: Int {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
    
    func monthType() -> String {
        switch self {
        case .december, .january, .february:
            return "Winter month"
        case .march, .april, .may:
            return "Spring month"
        case .june, .july, .august:
            return "Summer month"
        case .september, .october, .november:
            return "Autumn month"
        }
    }
}

enum Salary {
    case dollar(Float)
    case euro(Float)
}

let mySalary = Salary.dollar(8500)

func getMessage(salary: Salary) -> String {
    switch salary {
    case .dollar(let mySalaryInDollar):
        return "My salary in dollars is \(mySalaryInDollar)"
    case .euro(let mySalaryInEuro):
        return "My salary in euro is \(mySalaryInEuro)"
    }
}

let whatIsMySalary = getMessage(salary: mySalary)
//print(whatIsMySalary)



let myWeekInCourse = CoursDuration.fourthWeek
//print(myWeekInCourse)
//print(myWeekInCourse.rawValue)

let myBirthDay = MonthOfTheYear.may
let yourBirthdayInSeason = myBirthDay.monthType()
//print(myBirthDay)
//print(yourBirthdayInSeason)


//Part 2 Створюємо персонажів для гри:
//●Створіть enum VehicleType: electric / nonElectric
//●Створіть протокол Vehicle, який включатиме властивості: weight: Float, speed: Float, type: VehicleType, canFly: Bool. Всі ці властивості можна позначити як { get }. Додайте функцію prepare()
//●Розширте протокол Vehicle з реалізацією функції prepare: якщо Vehicle electric, виводимо в консоль повідомлення "Charge", якщо noElectric, виводимо повідомлення "Refuel". Також задайте значення false для властивості canFly
//Створіть протокол FlyableVehicle з функцією getMaxHight -> Float
//●Створіть протокол Vehicle для об'єктів, що реалізують FlyableVehicle, додайте за замовчуванням для canFly значення true, type - nonElectric. Реалізуйте функцію getMaxHight. Якщо це електричний об'єкт, нехай він повертає weight + speed, якщо ні, то weight * speed
//●Створіть структури Car, ElectricCar, AirPlane та створіть їх екземпляри. Всередині структур задавати значення за замовчуванням не обов'язково, ініціалізатор буде присутній у структурах за умовчанням
//●Виведіть в консоль властивості у Car і electricalCar: type canFly. У airPlane виведіть властивість canFly та викличте функцію getMaxHight
//●Створіть структуру ElectricalAirplane, її екземпляр з тими самими даними, які ви використовували створення звичайного літака. Виведіть у консоль значення, яке повертає функція getMaxHight()

enum VehicleType {
    case electric
    case nonElectric
}

protocol Vehicle {
    var weight: Float { get }
    var speed: Float { get }
    var type: VehicleType { get }
    var canFly: Bool { get }
    
    func prepare()
}

extension Vehicle {
    
    var canFly: Bool {
        
        return false
    }
    
    func prepare() {
       
        if type == .electric {
            print("Charge")
        } else {
            print("Refuel")
        }
    }
}


protocol FlyableVehicle {
    func getMaxHight() -> Float
}

extension Vehicle where Self: FlyableVehicle {
    
    var canFly: Bool {
        return true
        }
    
    var type: VehicleType {
        return .nonElectric
    }
    
    func getMaxHight() -> Float {
        if type == .electric{
            return (weight + speed)
        } else {
            return (weight * speed)
        }
    }
    
}
 

struct Car: Vehicle {
    
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType
    
}

struct ElectricCar: Vehicle {
    
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType
    
}

struct AirPlaine: Vehicle, FlyableVehicle {
    
    
    
    var weight: Float
    
    var speed: Float
    
}

let noElectricCar = Car(weight: 2500, speed: 240, type: .nonElectric)
let electricCar = Car(weight: 2300, speed: 225, type: .electric)
let airPlaine = AirPlaine(weight: 5000, speed: 400)

//print(noElectricCar.type)
//print(noElectricCar.canFly)
//print(noElectricCar.weight)
//print(noElectricCar.speed)
//print(noElectricCar.prepare())
//print(electricCar.type)
//print(electricCar.canFly)
//print(electricCar.weight)
//print(electricCar.speed)
//print(electricCar.prepare())
//print(airPlaine.canFly)
//print(airPlaine.getMaxHight())

struct ElectricAirPlaine: Vehicle, FlyableVehicle {
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType = .electric
    
}

var electricAirPlain = ElectricAirPlaine(weight: 4500, speed: 500)

electricAirPlain.getMaxHight()
