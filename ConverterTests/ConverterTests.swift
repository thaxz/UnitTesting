//
//  ConverterTests.swift
//  ConverterTests
//
//  Created by thaxz on 31/08/23.
//

import XCTest

final class ConverterTests: XCTestCase {
    
    // creating a reference to the converter
    // sut = system under testing
    private var sut: Converters!
    
    // It's going to be called before each function
    override func setUpWithError() throws {
        sut = Converters()
    }
    
    // It's going to be called after each function
    override func tearDownWithError() throws {
        sut = nil
    }

    /// Create a simple conversion  with a positive number
    func test_convert10_returns1080(){
        let actual = sut.convertEuroToUSD(euro: "10")
        let expected = "$10.80"
        
        // testing if it's equal to what we're expecting
        XCTAssertEqual(actual, expected)
    }
    
    /// Negative numbers returns an error message
    func test_convertNeg10_returnsErrorMessage(){
        let actual = sut.convertEuroToUSD(euro: "-10")
        let expected = "Please enter a positive number."
        
        // testing if it's equal to what we're expecting
        XCTAssertEqual(actual, expected)
    }

}
