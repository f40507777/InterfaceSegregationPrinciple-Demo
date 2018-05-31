//
//  UI.swift
//  InterfaceSegregationPrinciple-Demo
//
//  Created by Finn on 2018/5/28.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

class UI {
    static var showOnScreenText: String = ""
    
    class func requestDepositAmount() {
        showOnScreenText = "請輸入存款金額"
    }
    
    class func requestWithdrawalAmount() {
        showOnScreenText = "請輸入提款金額"
    }
    
    class func requestTransferAmount() {
        showOnScreenText = "請輸入轉帳金額"
    }
    
    class func informInsufficientFunds() {
        showOnScreenText = "目前餘額不足"
    }
    
}
