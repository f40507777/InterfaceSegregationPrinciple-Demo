//
//  UI.swift
//  InterfaceSegregationPrinciple-Demo
//
//  Created by Finn on 2018/5/28.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

protocol RequestDepositAmountUI {
    static func requestDepositAmount()
}

protocol RequestWithdrawalAmountUI {
    static func requestWithdrawalAmount()
}

protocol InformInsufficientFundsUI {
    static func informInsufficientFunds()
}

protocol RequestTransferAmountUI {
    static func requestTransferAmount()
}

class UI {
    static var showOnScreenText: String = ""
}


class DeposiUI: UI, RequestDepositAmountUI {
    static func requestDepositAmount() {
        showOnScreenText = "請輸入存款金額"
    }
}

class WithdrawalUI: UI, RequestWithdrawalAmountUI, InformInsufficientFundsUI {
    
    static func requestWithdrawalAmount() {
        showOnScreenText = "請輸入提款金額"
    }
    
    static func informInsufficientFunds() {
        showOnScreenText = "目前餘額不足"
    }
}

class TransferUI: UI, RequestTransferAmountUI {
    static func requestTransferAmount() {
        showOnScreenText = "請輸入轉帳金額"
    }
}

