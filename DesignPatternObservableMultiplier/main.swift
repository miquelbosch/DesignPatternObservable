//
//  main.swift
//  DesignPatternObservableMultiplier
//
//  Created by Miquel Bosch Cortés on 31/1/18.
//  Copyright © 2018 Miquel Bosch Cortés. All rights reserved.
//

import Foundation

print("Hello, I'm your multiplier")

let subject = Subject()

let multiplierOne = MultiplierOne(subject: subject, id: 1)
let multiplierTwo = MultiplierTwo(subject: subject, id: 2)

subject.number = 2



