//
//  TranscationOnScreen.swift
//  TranscationOnScreen
//
//  Created by Finn on 2018/5/28.
//  Copyright © 2018年 Finn. All rights reserved.
//

import XCTest

class TranscationOnScreen: XCTestCase {
    
    var screenUI = ScreenUI()

    func test_showDepositScreenUILog() {
        DepositTransaction(depositUI: screenUI).execute()
        
        XCTAssertEqual(screenUI.showScreenText, "請輸入存款金額")
    }
    
    func test_showWithdrawalScreenUILog() {
        WithdrawalTransaction(withdrawaUI: screenUI).execute()
        
        XCTAssertEqual(screenUI.showScreenText, "目前餘額不足")
    }
    
    func test_showTransferScreenUILog() {
        TransferTransaction(transferUI: screenUI).execute()
        
        XCTAssertEqual(screenUI.showScreenText, "請輸入轉帳金額")
    }
}
