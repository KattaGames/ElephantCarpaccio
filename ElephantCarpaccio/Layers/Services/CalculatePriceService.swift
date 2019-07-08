//
//  CalculatePriceService.swift
//  ElephantCarpaccio
//
//  Created by Badre DAHA BELGHITI on 08/07/2019.
//  Copyright © 2019 Badre DAHA BELGHITI. All rights reserved.
//

import Foundation


class CalculatePriceService {
    
    func calculateTaxRateByCode(code: String) -> Double {
        var taxRate = 0.0
        
        switch code {
        case "UT":
            taxRate = 6.85
        case "NV":
            taxRate = 8.00
        case "TX":
            taxRate = 6.25
        case "AL":
            taxRate = 4.00
        case "CA":
            taxRate = 8.25
        default:
            break
        }
        return taxRate
    }

}
