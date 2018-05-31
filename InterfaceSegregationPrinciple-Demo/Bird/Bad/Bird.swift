//
//  Bird.swift
//  InterfaceSegregationPrinciple-Demo
//
//  Created by Finn on 2018/5/31.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

protocol Bird {
    
    var aciotnLog: String  { get }
    
    func eat()
    
    func drink()
    
    func playSomething()
    
    func fly()
    
}

class Eagle: Bird {
    
    var aciotnLog: String = "Eagle do nothing"
    
    func eat() {
        aciotnLog = "Eagle eat!"
    }
    
    func drink() {
        aciotnLog = "Eagle drink!"
    }
    
    func playSomething() {
        fatalError("Eagle no play!!")
    }
    
    func fly() {
        aciotnLog = "Eagle fly!"
    }
    
}

class Penguin: Bird {
    
    var aciotnLog: String = "Penguin do nothing"
    
    func eat() {
        aciotnLog = "Penguin eat!"
    }
    
    func drink() {
        aciotnLog = "Penguin drink!"
    }
    
    func playSomething() {
        aciotnLog = "Penguin play something???"
    }
    
    func fly() {
        fatalError("Penguin cann't fly QQ")
    }
    
}
