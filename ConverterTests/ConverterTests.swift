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
        
        XCTAssertEqual(actual, expected)
    }

    func test_convertEmptyString_returnsErrorMessage(){
        let actual = sut.convertEuroToUSD(euro: "")
        let expected = "Please enter a positive number."
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_invalidInput_returnsErrorMessage(){
        let actual = sut.convertEuroToUSD(euro: "Hello, World!")
        let expected = "Please enter a positive number."
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_convertDecimal1050_returnsErrorMessage(){
        let actual = sut.convertEuroToUSD(euro: "10.50")
        let expected = "$11.34"
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_convertBigNumber_returnsErrorMessage(){
        let actual = sut.convertEuroToUSD(euro: "10000000000")
        let expected = "Value too big to convert."
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_SampleTest(){
        let actual = true
        XCTAssertTrue(actual)
    }
    
}
