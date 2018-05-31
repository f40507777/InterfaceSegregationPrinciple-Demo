//
//  Bird.swift
//  InterfaceSegregationPrinciple-Demo
//
//  Created by Finn on 2018/5/31.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

protocol Bird {
    
    var aciotnLog: String  { get set }
    
    func eat()
    
    func drink()
    
}

protocol Fly {
    
    func fly()
    
}

protocol Entertainment {
    
    func playSomething()
    
}


class Eagle: Bird, Fly {
    
    var aciotnLog: String = "Eagle do nothing"

    func eat() {
        aciotnLog = "Eagle eat!"
    }

    func drink() {
        aciotnLog = "Eagle drink!"
    }

    func fly() {
        aciotnLog = "Eagle fly!"
    }
}



class Penguin: Bird, Entertainment {
    
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

}
