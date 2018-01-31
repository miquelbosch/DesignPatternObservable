//
//  MultiplierOne.swift
//  DesignPatternObservableMultiplier
//
//  Created by Miquel Bosch Cortés on 31/1/18.
//  Copyright © 2018 Miquel Bosch Cortés. All rights reserved.
//

import Foundation

class MultiplierOne: Observable {
    var id = Int()
    var subject = Subject()
    let multiplier = 1
    
    init(subject: Subject, id: Int) {
        self.id = id
        self.subject = subject
        self.subject.attachObserver(observer: self)
        
    }
    
    
    func update() {
        print("The operation -> \(subject.number) * \(multiplier) = \(multiplier*subject.number)")
    }
    
    
}
