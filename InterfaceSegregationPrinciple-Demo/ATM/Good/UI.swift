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

protocol ATMUI: DepositUI, WithdrawalUI, TransferlUI {}

class ScreenUI {
    var showScreenText: String = ""
}

extension ScreenUI: DepositUI {
    func requestDepositAmount() {
        showScreenText = "請輸入存款金額"
    }
}

extension ScreenUI: WithdrawalUI {
    func requestWithdrawalAmount() {
        showScreenText = "請輸入提款金額"
    }
    
    func informInsufficientFunds() {
        showScreenText = "目前餘額不足"
    }
}

extension ScreenUI: TransferlUI {
    func requestTransferAmount() {
        showScreenText = "請輸入轉帳金額"
    }
}
