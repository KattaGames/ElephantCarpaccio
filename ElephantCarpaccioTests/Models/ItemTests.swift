//
//  ItemTests.swift
//  ElephantCarpaccioTests
//
//  Created by Badre DAHA BELGHITI on 05/07/2019.
//  Copyright © 2019 Badre DAHA BELGHITI. All rights reserved.
//

import XCTest
@testable import ElephantCarpaccio

class ItemTests: XCTestCase {
    
    func test_item_sut_not_nil() {
        let item = Item(label: "",quantity: 0.0, price: 0.0, codeString: "code")
        XCTAssertNotNil(item)
    }
    
    func test_accept_input_item() {
        let label = "label"
        let quantity = 2.0
        let price = 12.0
        let codeString = "LetterCode"
        let item = Item(label: label,quantity: quantity,price: price, codeString: codeString)
        XCTAssertEqual(item.label, label)
        XCTAssertEqual(item.quantity, quantity)
        XCTAssertEqual(item.price, price)
        XCTAssertEqual(item.codeString, codeString)
    }
}
