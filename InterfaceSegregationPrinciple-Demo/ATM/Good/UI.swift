//
//  UI.swift
//  InterfaceSegregationPrinciple-Demo
//
//  Created by Finn on 2018/5/28.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

protocol DepositUI {
    func requestDepositAmount()
}

protocol WithdrawalUI {
    func requestWithdrawalAmount()
    func informInsufficientFunds()
}

protocol TransferlUI {
    func requestTransferAmount()
}

protocol UI: DepositUI, WithdrawalUI, TransferlUI {}

class ScreenUI: UI {

    var showScreenText: String = ""
    
    func requestDepositAmount() {
        showScreenText = "請輸入存款金額"
    }
    
    func requestWithdrawalAmount() {
        showScreenText = "請輸入提款金額"
    }

    func informInsufficientFunds() {
        showScreenText = "目前餘額不足"
    }
    
    func requestTransferAmount() {
        showScreenText = "請輸入轉帳金額"
    }
    
}
