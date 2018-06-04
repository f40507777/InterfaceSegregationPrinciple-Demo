//
//  Translation.swift
//  InterfaceSegregationPrinciple-Demo
//
//  Created by Finn on 2018/5/28.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

protocol Transaction {
    func execute()
}

class DepositTransaction: Transaction {
    var depositUI: DepositUI

    required init(depositUI: DepositUI) {
        self.depositUI = depositUI
    }
    
    func execute() {
        depositUI.requestDepositAmount()
    }
}

class WithdrawalTransaction: Transaction {
    var withdrawaUI: WithdrawalUI
    
    required init(withdrawaUI: WithdrawalUI) {
        self.withdrawaUI = withdrawaUI
    }
    
    func execute() {
        withdrawaUI.requestWithdrawalAmount()
        withdrawaUI.informInsufficientFunds()
    }
}

class TransferTransaction: Transaction {
    var transferUI: TransferlUI
    
    required init(transferUI: TransferlUI) {
        self.transferUI = transferUI
    }
    
    func execute() {
        transferUI.requestTransferAmount()
    }
}
