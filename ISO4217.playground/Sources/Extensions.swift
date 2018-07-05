//
//  Extensions.swift
//  ISO4217
//
//  Created by mike vorisis on 7/5/18.
//

import Foundation

extension String {
    
    public var toCurrencyCode: String {
        if let path = Bundle.main.path(forResource: "isoCodes", ofType: "plist") {
            for item in NSArray(contentsOfFile: path) ?? [] {
                if let value = item as? NSDictionary {
                    if value["digitsCode"] as? String == self {
                        return value["currencyCode"] as? String ?? "-"
                    }
                }
            }
        }
        return "-"
    }
}
