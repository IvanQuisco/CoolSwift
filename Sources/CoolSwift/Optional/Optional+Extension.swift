//
//  Optional+Extension.swift
//  
//
//  Created by Ivan Quintana on 09/04/22.
//

import Foundation

public extension Optional {
    var isNil: Bool { self == nil }
    
    var isNotNil: Bool { self != nil }
    
    var exist: Bool { isNotNil }
    
    var doesNotExist: Bool { isNil }
    
    func coalesce(_ value: Wrapped) -> Wrapped {
        switch self {
        case .none:
            return value
        case let .some(wrapped):
            return wrapped
        }
    }
    
    func coalesce(_ block: () -> Wrapped) -> Wrapped {
        switch self {
        case .none:
            return block()
        case let .some(wrapped):
            return wrapped
        }
    }
    
    func `do`(_ block: () -> Void) {
        if doesNotExist { block() }
    }
}
