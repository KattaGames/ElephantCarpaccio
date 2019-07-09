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
    
    func test_calculate_tax_rate_UT_code(){
        let sut = CalculatePriceService()
        let rate = try? sut.calculateTaxRateByCode(code: "UT")
        XCTAssertEqual(TaxRateEnum.UT.rate, rate)
    }
    
    func test_calculate_tax_rate_NV_code(){
        let sut = CalculatePriceService()
        let rate = try? sut.calculateTaxRateByCode(code: "NV")
        XCTAssertEqual(TaxRateEnum.NV.rate, rate)
    }
    
    func test_calculate_tax_rate_TX_code(){
        let sut = CalculatePriceService()
        let rate = try? sut.calculateTaxRateByCode(code: "TX")
        XCTAssertEqual(TaxRateEnum.TX.rate, rate)
    }
    
    func test_calculate_tax_rate_AL_code(){
        let sut = CalculatePriceService()
        let rate = try? sut.calculateTaxRateByCode(code: "AL")
        XCTAssertEqual(TaxRateEnum.AL.rate, rate)
    }
    
    func test_calculate_tax_rate_CA_code(){
        let sut = CalculatePriceService()
        let rate = try? sut.calculateTaxRateByCode(code: "CA")
        XCTAssertEqual(TaxRateEnum.CA.rate, rate)
    }
    
    func test_calculate_tax_rate_UNKNOW_code(){
        let sut = CalculatePriceService()
       
        XCTAssertThrowsError(try sut.calculateTaxRateByCode(code: "fakeCode"), "Expected Throw an Exception !") { (error) in
            XCTAssertNotNil(error)
             XCTAssertEqual(error as? TaxtRateError, TaxtRateError.unknown, "Expected to throw Unknown")
        }
    }
    
    
    
}

