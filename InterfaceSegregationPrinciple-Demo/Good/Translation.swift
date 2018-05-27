//
//  Translation.swift
//  InterfaceSegregationPrinciple-Demo
//
//  Created by Finn on 2018/5/28.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

protocol Transaction {
    static func Execute()
}

class DepositTransaction: Transaction {
    static func Execute() {
        DeposiUI.RequestDepositAmount()
    }
}

class WithdrawalTransaction: Transaction {
    static func Execute() {
        WithdrawalUI.RequestWithdrawalAmount()
        WithdrawalUI.InformInsufficientFunds()
    }
}

class TransferTransaction: Transaction {
    static func Execute() {
        TransferUI.RequestTransferAmount()
    }
}
