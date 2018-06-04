//
//  Transaction.swift
//  InterfaceSegregationPrinciple-Demo
//
//  Created by Finn on 2018/5/28.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation


protocol Transaction {
    static func execute()
}

class DepositTransaction: Transaction {
    static func execute() {
        ScreenUI.requestDepositAmount()
    }
}

class WithdrawalTransaction: Transaction {
    static func execute() {
        ScreenUI.RequestWithdrawalAmount()
        ScreenUI.InformInsufficientFunds()
    }
}

class TransferTransaction: Transaction {
    static func execute() {
        ScreenUI.RequestTransferAmount()
    }
}
