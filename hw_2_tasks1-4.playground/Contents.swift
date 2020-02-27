import Cocoa

//1. четное или нет
func whatNumber(_ x: Int) -> Bool {
    if x % 2 == 0 {
        return true
    } else {
        return false
    }
}
whatNumber(100)

//2. без остатка на 3
func divede3(_ x: Int) -> Bool {
        if x % 3 == 0 {
            return true
        } else {
            return false
        }
    }
    whatNumber(6)

//3. массив 100 чисел
var arr: [Int] = [0]
while arr.count < 100 {
    arr.append(arr.last! + 1)
}
print(arr)
    
//4. удалить из массива все четные числа и те что не делятся на 3

for (_,n) in arr.enumerated() {
    if (n % 2 == 0) || (n % 3 != 0) {
        arr.remove(at: arr.firstIndex(of: n)!)
    }
}
print(arr)
