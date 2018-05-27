//
//  Transaction.swift
//  InterfaceSegregationPrinciple-Demo
//
//  Created by Finn on 2018/5/28.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

protocol Translation {
    static func Execute()
}

class DepositTransaction: Translation {
    static func Execute() {
        UI.RequestDepositAmount()
    }
}

class WithdrawalTransaction: Translation {
    static func Execute() {
        UI.RequestWithdrawalAmount()
        UI.InformInsufficientFunds()
    }
}

class TransferTransaction: Translation {
    static func Execute() {
        UI.RequestTransferAmount()
    }
}
