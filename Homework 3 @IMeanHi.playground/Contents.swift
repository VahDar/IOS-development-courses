import UIKit

//Part 3: Напишіть розширення на такі типи:
//● Int - Функція зводить число N ступінь. Спробуйте вирішити задачу без використання стандартної функції pow(), розв'яжіть її з використанням циклів
//● String - Обчислювана властивість isPalindrome. Повертає Bool, залежно від того, чи є рядок паліндромом
//*Не забувайте, що ви можете шукати інформацію в інтернеті
//Протестуйте нові розширення з різними даними, використовуйте не менше трьох тестів на кожен тип, які максимально відрізняються між собою
//


extension Int {
    func exponent (a: Int, b: Int) -> Int {
        var sum = 1
        for _ in sum...b {
            sum = sum * a
        }
        return sum
    }
}

let number = 5
number.exponent(a: 3, b: 3)
number.exponent(a: 4, b: 3)
number.exponent(a: 2, b: 5)

extension String {
    func isPalindrome(_ word: String) -> Bool {
        let word = word.lowercased().filter { $0 != " "}
        for (i, character) in word.enumerated() {
            if character != Array(word)[word.count-i-1] {
                return false
            }
        }
        return true
    }
}

let str = "Ss"
str.isPalindrome("rtr")
str.isPalindrome("atata")
str.isPalindrome("atat")
str.isPalindrome("авава")

// Part5: Виконайте практику першому слайді.
//Напишите generic:
//●Функцию, принимающую два параметра и меняющую местами их значения ●Функцию, принимающую два параметра и возвращающую typle с ними же ●Функцию сложения, которая принимает два параметра и возвращает
//их сумму
//●Тип, который содержит свойство - Dictionary с данными. Напишите функции,
//которые добавляют в этот словарь значение по ключу и достают значение по ключу

func swaped<T>(val1: inout T, val2: inout T)  {
    (val1, val2) = (val2, val1)
}

var one = 13
var two = 10

swaped(val1: &one, val2: &two)


func tuples<A, B>(param1: A, param2: B) ->(A, B) {
    return (param1, param2)
}
let tup = tuples(param1: "hi", param2: 3)
tup

func summ<A: Numeric>(val1: A, val2: A) {
    print(val1 + val2)
}

//extension Dictionary {
//
//    mutating func add<T>(_ element: T, toArrayOn key: Key) where Value == [T] {
//        self[key] == nil ? self[key] = [element] : self[key]?.append(element)
//    }
//}

struct MyDict<K:Hashable, V> {
    private var dict : [K:V] = [:]
    
    mutating func addValue(_ value: V, forKey key: K) {
        dict[key] = value
    }
    
    func getValue(forKey key: K) -> V? {
        dict[key]
    }
}
//var dict: [String: [Int]] = [:]
//dict.add(14, toArrayOn: "Iphone")
//
//var intStrDict = MyDict<Int, String>()
//intStrDict.addValue("number one", forKey: 1)
//intStrDict.addValue("number two", forKey: 2)
//print(intStrDict.getValue(forKey: 2))


// Part 6: Виконайте практику другого слайду. Тут ви можете реалізувати або стек або пов'язаний список (stack / linked list)

class Node<Item> {
    let value: Item
    var next: Node?
    
    init(value: Item) {
        self.value = value
        self.next = nil
    }
}
    class LinkedList<Item> {
        var head: Node<Item>?
        private var tail: Node<Item>?
        
        var first: Node<Item>? {
            return head
        }
        
        var last: Node<Item>? {
            return tail
        }
        var isEmpty: Bool {
            head == nil
        }
        var count: Int {
            var currentNode = head
            var counter = 0
            
            while currentNode != nil {
                counter += 1
                currentNode = currentNode?.next
            }
            return counter
        }
        
        func append(value: Item) {
            
            let newNode = Node(value: value)
            
            if let tailNode = tail {
                tailNode.next = newNode
            } else {
                head = newNode
            }
            tail = newNode
        }
        func nodeAt(index: Int) -> Item? {
            assert(index >= 0, "Index cannot be less than zero")
            
            var currentNode = head
            var i = index
            
            while currentNode != nil {
                if i == 0 {
                    return currentNode?.value
                }
                i -= 1
                currentNode = currentNode?.next
            }
            return nil
        }
        
        func removeAt(index: Int) {
            assert(index >= 0, "Index cannot be less than zero")
            
            var currentNode = head
            var i = index
            
            if index == 0 {
                head = head?.next
            } else {
                while currentNode != nil {
                    if i == 1 {
                        currentNode?.next = currentNode?.next?.next
                    }
                    i -= 1
                    currentNode = currentNode?.next
                }
            }
        }
        func removeAll() {
            head = nil
            tail = nil
        }
    }
    
    extension LinkedList:  CustomStringConvertible {
        var description: String {
            let start = "Linked List: [HEAD "
            var elements: [String] = []
            var currentNode = head
            
            while currentNode != nil {
                elements.append(String(describing: currentNode!.value))
                currentNode = currentNode?.next
            }
            
            let output = elements.joined(separator: " -> ")
            return start + output
        }
        func printLinkedList() {
            print(description)
        }
    }

    var linkedList: LinkedList = LinkedList<String>()
    linkedList.append(value: "One")
    linkedList.append(value: "Two")
    linkedList.append(value: "Three")
    linkedList.append(value: "Four")
    
    linkedList.nodeAt(index: 2)
    linkedList.removeAt(index: 0)
    
    linkedList.first?.value
    linkedList.last?.value
    linkedList.isEmpty
    linkedList.count
    
    linkedList.printLinkedList()

struct Stack<Item> {
    private var items: [Item] = []
    
    func peak() -> Item {
        guard let topItem = items.last else { fatalError("The stack is empty") }
        return topItem
    }
    
    mutating func pop() -> Item {
        return items.removeLast()
    }
    
    mutating func push(item: Item) {
        items.append(item)
    }
}
    
    extension Stack: CustomStringConvertible {
        var description: String {
            let top = "--Stack--\n"
            let bottom = "\n------"
            let elements = items
                .map {String(describing: $0)}
                .reversed()
                .joined(separator: "\n")
            return top + elements + bottom
        }
        
        func printStack() {
            print(description)
        }
    }

var stack = Stack<String>()
stack.push(item: "One")
stack.push(item: "Two")
stack.push(item: "Three")

stack.peak()

stack.printStack()
