//
//  Optional+ExtensionTests.swift
//  
//
//  Created by Ivan Quintana on 09/04/22.
//

import XCTest

class Optional_ExtensionTests: XCTestCase {
    func test_valueIsNil_returnsTrue() {
        // Arrange
        let optionalValue: Int? = nil

        // Act
        let isNil = optionalValue.isNil
        
        // Assert
        XCTAssertTrue(isNil)
    }
    
    func test_valueIsNotNil_returnsFalse() {
        // Arrange
        let optionalValue: Int? = 10

        // Act
        let isNil = optionalValue.isNil
        
        // Assert
        XCTAssertFalse(isNil)
    }
    
    func test_valueExist_returnsTrue() {
        // Arrange
        let optionalValue: String? = "Value"

        // Act
        let exist = optionalValue.exist
        
        // Assert
        XCTAssertTrue(exist)
    }
    
    func test_valueDoesNotExist_returnsFalse() {
        // Arrange
        let optionalValue: String? = nil

        // Act
        let exist = optionalValue.exist
        
        // Assert
        XCTAssertFalse(exist)
    }
    
    func test_valueIsNotNil_coalesceProvidesWrapped() {
        // Arrange
        let optionalValue: String? = "Wrapped"
        
        // Act
        let nonOptional = optionalValue.coalesce("Default")
        
        // Assert
        XCTAssertEqual(nonOptional, "Wrapped")
    }
    
    func test_valueIsNotNil_coalesceProvidesDefault() {
        // Arrange
        let optionalValue: String? = nil
        
        // Act
        let nonOptional = optionalValue.coalesce("Default")
        
        // Assert
        XCTAssertEqual(nonOptional, "Default")
    }
    
    func test_valueIsNotNil_coalesceBlockNotCalled() {
        // Arrange
        let optionalValue: Int? = 10
        
        // Act
        let nonOptional = optionalValue.coalesce { 0 }
        
        // Assert
        XCTAssertEqual(nonOptional, 10)
    }
    
    func test_valueIsNotNil_coalesceBlockProvidesDefault() {
        // Arrange
        let optionalValue: Int? = nil
        
        // Act
        let nonOptional = optionalValue.coalesce { 0 }
        
        // Assert
        XCTAssertEqual(nonOptional, 0)
    }
    
    func test_valueIsNil_doBlockIsCalled() {
        // Arrange
        let optionalValue: String? = nil
        var output = "OriginalValue"
        
        // Act
        optionalValue.do { output = "NilFound" }
        
        // Assert
        XCTAssertEqual(output, "NilFound")
    }
    
    func test_valueIsNotNil_doBlockIsNotCalled() {
        // Arrange
        let optionalValue: Int? = 1
        var output = "OriginalValue"
        
        // Act
        optionalValue.do { output = "NilFound" }
        
        // Assert
        XCTAssertEqual(output, "OriginalValue")
    }
}
