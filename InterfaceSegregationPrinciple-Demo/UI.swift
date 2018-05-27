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
    
    class func RequestDepositAmount() {
        showOnScreenText = "請輸入存款金額"
    }
    
    class func RequestWithdrawalAmount() {
        showOnScreenText = "請輸入提款金額"
    }
    
    class func RequestTransferAmount() {
        showOnScreenText = "請輸入轉帳金額"
    }
    
    class func InformInsufficientFunds() {
        showOnScreenText = "目前餘額不足"
    }
    
}
