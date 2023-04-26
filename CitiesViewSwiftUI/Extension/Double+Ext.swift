//
//  Double+Ext.swift
//  CitiesViewSwiftUI
//
//  Created by Vladlens Kukjans on 26/04/2023.
//

import Foundation


extension Double {
    func reduceScale(to places: Int) -> Double {
        let multiplier = pow(10, Double(places))
        let newDecimal = multiplier * self // move the decimal right
        let truncated = Double(Int(newDecimal)) // drop the fraction
        let originalDecimal = truncated / multiplier // move the decimal back
        return originalDecimal
    }
}
