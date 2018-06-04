//
//  UI.swift
//  InterfaceSegregationPrinciple-Demo
//
//  Created by Finn on 2018/5/28.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

protocol ATMUI {
    func requestDepositAmount()
    func requestWithdrawalAmount()
    func requestTransferAmount()
    func informInsufficientFunds()
}

class ScreenUI {
    var showOnScreenText: String = ""
}

extension ScreenUI: ATMUI {
    func requestDepositAmount() {
        showOnScreenText = "請輸入存款金額"
    }
    
    func requestWithdrawalAmount() {
        showOnScreenText = "請輸入提款金額"
    }
    
    func requestTransferAmount() {
        showOnScreenText = "請輸入轉帳金額"
    }
    
    func informInsufficientFunds() {
        showOnScreenText = "目前餘額不足"
    }
    
}
