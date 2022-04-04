//
//  Bool+ExtensionTests.swift
//  
//
//  Created by Ivan Quintana on 04/04/22.
//

import XCTest
@testable import CoolSwift

final class Bool_ExtensionTests: XCTestCase {
    func test_isTrue_returnsTrue() {
        let sut = true
        XCTAssertTrue(sut.isTrue)
    }
    
    func test_isTrue_returnsFalse() {
        let sut = false
        XCTAssertFalse(sut.isTrue)
    }
    
    func test_isFalse_resturnsTrue() {
        let sut = false
        XCTAssertTrue(sut.isFalse)
    }
    
    func test_isFalse_resturnsFalse() {
        let sut = true
        XCTAssertFalse(sut.isFalse)
    }
}
