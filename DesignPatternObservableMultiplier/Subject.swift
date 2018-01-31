//
//  Subject.swift
//  DesignPatternObservableMultiplier
//
//  Created by Miquel Bosch Cortés on 31/1/18.
//  Copyright © 2018 Miquel Bosch Cortés. All rights reserved.
//

import Foundation

class Subject {
    private var _observersArray = [Observable]()
    private var _number = Int()
    
    var number: Int{
        get{
            return _number
            
        }
        
        set{
            self._number = newValue
            updateToAll()
        }
    }
    
    func attachObserver(observer: Observable) {
        self._observersArray.append(observer)
    }
    
    func removeObserver(observer: Observable) {
        self._observersArray = _observersArray.filter{ $0.id != observer.id}
    }
    
    
    func updateToAll() {
        for observer in _observersArray{
            observer.update()
        }
    }
    
    // attach, remove and notify
    
    
    
    
    
}
