//
//  BirdActionTest.swift
//  BirdActionTest
//
//  Created by Finn on 2018/5/31.
//  Copyright © 2018年 Finn. All rights reserved.
//

import XCTest

class EagleActionTest: XCTestCase {
    
    var eagle = Eagle()
    
    func test_eagleEat() {
        eagle.eat()
        XCTAssertEqual(eagle.aciotnLog, "Eagle eat!")
    }
    
    func test_eagleDrink() {
        eagle.drink()
        XCTAssertEqual(eagle.aciotnLog, "Eagle drink!")
    }
    
    func test_eagleFly() {
        eagle.fly()
        XCTAssertEqual(eagle.aciotnLog, "Eagle fly!")
    }

}

class PenguinActionTest: XCTestCase {
    
    var penguin = Penguin()
    
    func test_penguinEat() {
        penguin.eat()
        XCTAssertEqual(penguin.aciotnLog, "Penguin eat!")
    }
    
    func test_penguinDrink() {
        penguin.drink()
        XCTAssertEqual(penguin.aciotnLog, "Penguin drink!")
    }
    
    func test_penguinPlaySomething() {
        penguin.playSomething()
        XCTAssertEqual(penguin.aciotnLog, "Penguin play something???")
    }
    
}


