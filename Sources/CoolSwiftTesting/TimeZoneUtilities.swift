//
//  TimeZoneUtilities.swift
//  
//
//  Created by Ivan Quintana on 09/04/22.
//

import CoolSwift
import Foundation

#if DEBUG

public extension TimeZone {
    static var testGMT: TimeZone {
        .init(secondsFromGMT: 0)
        .coalesce {
            assertionFailure("GMT time zone must always exist")
            return .current
        }
    }
}

#endif
