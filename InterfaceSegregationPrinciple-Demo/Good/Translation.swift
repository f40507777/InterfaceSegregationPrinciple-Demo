//
//  Translation.swift
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
        DeposiUI.requestDepositAmount()
    }
}

class WithdrawalTransaction: Transaction {
    static func execute() {
        WithdrawalUI.requestWithdrawalAmount()
        WithdrawalUI.informInsufficientFunds()
    }
}

class TransferTransaction: Transaction {
    static func execute() {
        TransferUI.requestTransferAmount()
    }
}
