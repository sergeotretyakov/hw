//
//  main.swift
//  hw_1_task_3_bankdep
//
//  Created by Sergey Tretyakov on 16.02.2020.
//  Copyright © 2020 Sergey Tretyakov. All rights reserved.
//

import Foundation

print("Введите сумму вклада")
var inputSum = Float(readLine()!)!
print("Введите процент")
var inputProc = Float(readLine()!)!
inputProc = inputProc/100
print("Введите срок в годах")
let inputTime = Float(readLine()!)!
var sumWithProcent: Float = 0

for _ in 0..<Int(inputTime) {
    sumWithProcent = inputSum * inputProc + inputSum
    inputSum = sumWithProcent
}

print("Размер вклада с процентами за " + String(Int(inputTime)) + " лет составит " + String(Int(inputSum)))
//+
