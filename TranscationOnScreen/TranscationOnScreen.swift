//
//  TranscationOnScreen.swift
//  TranscationOnScreen
//
//  Created by Finn on 2018/5/28.
//  Copyright © 2018年 Finn. All rights reserved.
//

import XCTest

class TranscationOnScreen: XCTestCase {
    
    func test_showTransferLog() {
        DepositTransaction.execute()
        XCTAssertEqual(UI.showOnScreenText, "請輸入存款金額")
    }
    
    func test_showWithdrawalLog() {
        WithdrawalTransaction.execute()
        XCTAssertEqual(UI.showOnScreenText, "目前餘額不足")
    }
    
    func test_showDepositLog() {
        TransferTransaction.execute()
        XCTAssertEqual(UI.showOnScreenText, "請輸入轉帳金額")
    }
    
}
