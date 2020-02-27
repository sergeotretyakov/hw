import UIKit
//ax^2 + bx + c = 0
let a: Double = 2
let b: Double = 3
let c: Double = -9
var d: Double = pow(b, 2) - 4*a*c
print("Discriminant is " + String(d))
var x1 = (-b + sqrt(d))/(2*a)
var x2 = (-b - sqrt(d))/(2*a)

if d < 0 {
        print("The root doesn't exist")
    } else if d == 0 {
        print("The root is " + String(x1))
    } else {
        print("The root 1 is " + String(x1) + "\nThe root 2 is " + String(x2))
}

//+
