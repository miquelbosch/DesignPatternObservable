//
//  MultiplierTwo.swift
//  DesignPatternObservableMultiplier
//
//  Created by Miquel Bosch Cortés on 31/1/18.
//  Copyright © 2018 Miquel Bosch Cortés. All rights reserved.
//

import Foundation

class MultiplierTwo: Observable {
    let multiplier = 2
    var id = Int()
    var subject = Subject()
    
    init(subject: Subject, id: Int) {
        self.subject = subject
        self.subject.attachObserver(observer: self)
        self.id = id
    }
    
    func update() {
        print("The operation -> \(subject.number) * \(multiplier) = \(multiplier*subject.number)")
    }
    
    
}
