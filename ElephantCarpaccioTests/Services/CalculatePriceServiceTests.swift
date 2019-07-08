//
//  File.swift
//  ElephantCarpaccioTests
//
//  Created by Badre DAHA BELGHITI on 08/07/2019.
//  Copyright © 2019 Badre DAHA BELGHITI. All rights reserved.
//

import XCTest
@testable import ElephantCarpaccio

class CalculatePriceServiceTests: XCTestCase {
    
    func test_calculate_price_service(){
        let sut = CalculatePriceService()
        XCTAssertNotNil(sut)
    }
    
    func test_calculate_tax_rate(){
        let sut = CalculatePriceService()
        let taxtByCode = 0.0
        let rate = sut.calculateTaxRateByCode(code: "code")
        XCTAssertEqual(rate, taxtByCode)
        
        
        
    }
}

