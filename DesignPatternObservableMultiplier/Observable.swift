//
//  Observable.swift
//  DesignPatternObservableMultiplier
//
//  Created by Miquel Bosch Cortés on 31/1/18.
//  Copyright © 2018 Miquel Bosch Cortés. All rights reserved.
//

import Foundation

protocol Observable {
    var id: Int { get}
    func update()
    
}
