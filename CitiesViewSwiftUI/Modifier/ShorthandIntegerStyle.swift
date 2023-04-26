//
//  ShorthandIntegerStyle.swift
//  CitiesViewSwiftUI
//
//  Created by Vladlens Kukjans on 26/04/2023.
//

import SwiftUI


struct ShorthandIntegerStyle: FormatStyle {
    typealias FormatInput = Int
    typealias FormatOutput = String
    
    func format(_ value: FormatInput) -> FormatOutput {
        let num = Double(value)
        
        switch num {
        case 1_000_000...:
            let formatted = num / 1_000_000
            return "\(formatted.reduceScale(to: 1))m"
        case 1_000...:
            let formatted = num / 1_000
            return "\(formatted.reduceScale(to: 1))k"
        default:
            return "\(value)"
        }
    }
}

extension FormatStyle where Self == ShorthandIntegerStyle {
    static var shorthand: ShorthandIntegerStyle { .init() }
}

