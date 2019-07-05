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
        let item = Item()
        XCTAssertNotNil(item)
    }
    
}
