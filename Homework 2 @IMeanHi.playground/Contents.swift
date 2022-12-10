import UIKit

// Part 1:  Створіть клас Матрос (Sailor), в якому буде ініціалізатор, одна властивість - ім'я матроса та один метод "introduce Myself". При виклику цього методу, в консоль буде виводитися повідомлення "Привіт, мене звуть *ім'я матроса*!"

class Sailor {
    
    var nameSailor: String

    init (name: String) {
        nameSailor = name
    
    }
    
    convenience init() {
        self.init(name: "Jack")
    }
    
   func introduceMyself () {
       print("Привіт, мене звуть \(nameSailor)")
    }
}
    
//let sailor = Sailor()
//sailor.introduceMyself()


// Part 2: Створіть клас Корабель, у якому буде ініціалізатор, дві властивості: назва корабля та масив "матроси". Додайте також функцію "introduceAll", яка виводитиме вітання від імені всіх матросів, після чого виводитиме повідомлення "Ми з корабля *ім'я корабля*"

class Ship {
    var shipName: String
    var sailors: [String]
    
    init (shipName: String, sailors: [String]) {
        self.shipName = shipName
        self.sailors = sailors
    }
    

    func introduceAll() {
        for oneSailor in sailors {
            print("\(oneSailor), Привет!")
        }
        print("Мы с корабля - \(shipName)")
    }
}

//let introduce = Ship(shipName: "Black Perl", sailors: ["Jack"])
//introduce.introduceAll()


// Part3 : Через ініціалізатор створіть 5 екземплярів класу Матрос та клас Корабель, до якого передайте список створених матросів. Викличте функцію introduceAll. Ви повинні отримати в консолі вітання від імені всіх матросів та назву корабля

let sailor1 = Sailor(name: "Tod")
let sailor2 = Sailor(name: "Bob")
let sailor3 = Sailor(name: "Rob")
let sailor4 = Sailor(name: "Tom")
let sailor5 = Sailor(name: "Zed")


//let pirotsShip = Ship(shipName: "Pirot's ship", sailors: [sailor1.nameSailor, sailor2.nameSailor, sailor3.nameSailor, sailor4.nameSailor, sailor5.nameSailor])
//
//pirotsShip.introduceAll()



// Part 4:Створіть клас Titanic, дочірній від класу Ship. І клас TitanicSailor, дочірній від Sailor. Нехай TitanicSailor матиме ту саму функцію introduseMyself, але повідомлення буде виводити англійською. Аналогічно клас Titanic, тільки нехай його функція introduceAll виводить на двох мовах: те ж повідомлення що і Ship, а потім - таке ж повідомлення англійською. Не змінюйте існуючі класи Ship та Sailor

class Titanic: Ship {
    override func introduceAll() {
        super.introduceAll()
        print("\(sailors) - we are from ship \(shipName)")
    }
}

class TitanicSailor: Sailor {
    override func introduceMyself() {
        print("Hi, my name is \(nameSailor)")
    }
}

//let titanic = Titanic()
//titanic.introduceAll()
//
//let titanicSailor = TitanicSailor()
//titanicSailor.introduceMyself()


// Part 5: Створіть клас Calculator, з функціями +-*/. Створіть клас CalculatorPro, який також буде вираховувати відсоток від числа і зводитиме число в ступінь

class Calculator {
    
    func plus (a: Double, b: Double) -> Double {
       let sum = a + b
        return sum
    }
    
    func minuses (a: Double, b: Double) -> Double {
        let minus = a - b
        return minus
    }
    
    func multiply (a: Double, b: Double) -> Double {
        let multi = a * b
        return multi
    }
    
    func division (a: Double, b: Double) -> Double {
       let divis = a / b
        return divis
    }
}

class CalculatorPro {
    
    func powpow (a: Double, b: Double) -> Double {
        let exponentiation = pow(a, b)
        return exponentiation
    }
    
   
    func interest (a: Double, b: Double, c: Double = 100) -> Double {
        let percent = (a * b) / c
        return percent
    }
    
    func exponent (a: Int, b: Int) -> Int {
        var sum = 1
        for _ in sum...b {
            sum = sum * a
        }
        return sum
    }
    
}


// Part 5.1: Створіть клас SuperProCalc, дочірній від CalculatorPro, який буде рахувати складні відсотки для розрахунку суми депозиту на вказаний період часу із зазначеною процентною ставкою

class SuperProCalc: CalculatorPro {
    func depositPercent (depositAmount: Double, depositRate: Double, depositTerm: Double, daysOfYear: Double = 365) -> Double {
        
        let percentOfDeposit = (depositAmount * depositRate) / (daysOfYear * depositTerm)
        return percentOfDeposit
        
    }
}


/* Part 6: Придумайте свій приклад використання наслідування. Найпростіший спосіб - уявити, що ви створюєте комп'ютерну гру. Наприклад: вам потрібно створити персонажів, які будуть вміти щось робити (це функції) та мати якісь властивості (var/let ...)
Створіть основу для персонажа - батьківський клас, а потім додайте дочірні класи. Спробуйте спроектувати систему так, щоб дочірні персонажі мали перевизначати методи батьківського класу (override func)
Додайте ситуації, в яких дочірні персонажі мають використовувати виклик батьківського методу (super.*), і в яких не мають цього робити
Використовуйте init для ваших класів. Створіть екземпляри ваших класів, та протестуйте їх
Це творче завдання і воно буде прийняте при будь-якому рішенні, навіть дуже простому. Але це також ваша можливість створити щось масштабне та цікаве */

class Shooters {
    var charactersName: String
    var charactersClass: String
    
    
    init(charactersName: String, charactersClass: String) {
        self.charactersClass = charactersClass
        self.charactersName = charactersName
        print("New class created")
    }
    
    func greetings() {
        print("Hi, I'm ready")
        
    }
    
    func shoot(accuracy: Int, speedOfFire: Int, powerShot: Int) {
        print("I have accuracy \(accuracy) and my speed rate of fire \(speedOfFire), power shot \(powerShot)")
    }
    
    func move(speed: Int, stamina: Int) {
        print("My speedrun is \(speed) and stamina\(stamina)")
        
    }
}
    
class Sniper: Shooters {
       
        override func greetings() {
            super.greetings()
        }
        
        override func shoot(accuracy: Int = 85, speedOfFire: Int = 30, powerShot: Int = 70) {
            print("My accuraciry is \(accuracy) and my rate of fire is \(speedOfFire), power shot \(powerShot)")
        }
        override func move(speed: Int = 50, stamina: Int = 75) {
            print("My move speed \(speed) and stamina \(stamina)")
        }
        func superShot (superAccuracy: Int = 100, superPowerShot: Int = 100) {
            print("You dead!")
        }
    }

class MachineGunner: Shooters {
   
    override func greetings() {
        super.greetings()
    }
    
    override func shoot(accuracy: Int = 45, speedOfFire: Int = 70, powerShot: Int = 48) {
        print("My accuraciry is \(accuracy) and my rate of fire is \(speedOfFire), power shot \(powerShot)")
    }
    
    override func move(speed: Int = 75, stamina: Int = 80) {
        print("My move speed \(speed) and stamina \(stamina)")
    }
    
    func boosting (superAccuracy: Int = 75, superPowerShot: Int = 60, superSpeedOfFire: Int = 85) {
        print("You dead!")
    }
}

//let sniper = Sniper(charactersName: "Eagle Eye", charactersClass: "Sniper")
//print(sniper.greetings())
//print(sniper.shoot())
//print(sniper.move())
//print(sniper.superShot())
//
//let machineGunner = MachineGunner(charactersName: "Over Shot", charactersClass: "Machine Gunner")
//print(machineGunner.greetings())
//print(machineGunner.shoot())
//print(machineGunner.move())
//print(machineGunner.boosting())


/*Part 7: Створіть функцію, яка приймає 1 параметр, відсоток заряду батареї. Нехай функція поверне повідомлення користувача залежно від цього відсотка:
● якщо 100%: "Пристрій заряджений",
● якщо 70-80%, “Необхідно зарядити пристрій протягом 6 годин”
● якщо 20-40%, "Поставте пристрій на зарядку"
● якщо 0%, "Пристрій повністю розряджений"
В інших випадках не виводьте нічого. Використовуйте switch case. */

func battery (charge: Int = 75) -> Int {
   
    switch charge {
    case 100: print("Пристрій заряджений")
    case 70...80: print("Необхідно зарядити пристрій протягом 6 годин")
    case 20...40: print("Поставте пристрій на зарядку")
    case 0: print("Пристрій повністю розряджений")
    default: print("charge \(charge)%")
    }
    return charge
}

battery()


