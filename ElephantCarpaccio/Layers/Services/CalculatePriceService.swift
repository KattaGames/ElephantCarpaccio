//
//  CalculatePriceService.swift
//  ElephantCarpaccio
//
//  Created by Badre DAHA BELGHITI on 08/07/2019.
//  Copyright © 2019 Badre DAHA BELGHITI. All rights reserved.
//

import Foundation

enum TaxtRateError:Error{
        case unknown
}

protocol TaxRateProtocol {
    var code: String {get}
    var rate: Double {get}
}

enum TaxRateEnum: String, TaxRateProtocol{
    
    case UT
    case NV
    case TX
    case AL
    case CA
    
    init(code: String) throws{
        switch code {
        case "UT":
            self = .UT
        case "NV":
            self = .NV
        case "TX":
            self = .TX
        case "AL":
           self = .AL
        case "CA":
            self = .CA
        default:
            throw TaxtRateError.unknown
        }
    }
    
    var code: String{
        return self.rawValue
    }
    
    var rate: Double{
        switch self {
        case .UT:
            return 6.85
        case .NV:
            return 8.00
        case .TX:
            return 6.25
        case .AL:
            return 4.00
        case .CA:
            return 8.25
        }
    }
}

class CalculatePriceService {
    
    func calculateTaxRateByCode(code: String) throws -> Double{
        
        let taxRateProtocol = try TaxRateEnum(code:code)
        
        return taxRateProtocol.rate
    }
    
}
