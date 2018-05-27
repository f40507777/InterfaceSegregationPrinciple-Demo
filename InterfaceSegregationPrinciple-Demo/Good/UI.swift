//
//  UI.swift
//  InterfaceSegregationPrinciple-Demo
//
//  Created by Finn on 2018/5/28.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

protocol RequestDepositAmountUI {
    static func RequestDepositAmount()
}

protocol RequestWithdrawalAmountUI {
    static func RequestWithdrawalAmount()
}

protocol InformInsufficientFundsUI {
    static func InformInsufficientFunds()
}

protocol RequestTransferAmountUI {
    static func RequestTransferAmount()
}

class UI {
    static var showOnScreenText: String = ""
}


class DeposiUI: UI, RequestDepositAmountUI {
    static func RequestDepositAmount() {
        showOnScreenText = "請輸入存款金額"
    }
}

class WithdrawalUI: UI, RequestWithdrawalAmountUI, InformInsufficientFundsUI {
    
    static func RequestWithdrawalAmount() {
        showOnScreenText = "請輸入提款金額"
    }
    
    static func InformInsufficientFunds() {
        showOnScreenText = "目前餘額不足"
    }
}

class TransferUI: UI, RequestTransferAmountUI {
    static func RequestTransferAmount() {
        showOnScreenText = "請輸入轉帳金額"
    }
}

