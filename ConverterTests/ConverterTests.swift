//
//  ConverterTests.swift
//  ConverterTests
//
//  Created by thaxz on 31/08/23.
//

import XCTest

final class ConverterTests: XCTestCase {

    func test_convert10_returns1080(){
        // creating a reference to the converter
        // sut = system under testing
        let sut = Converters()
        
        let actual = sut.convertEuroToUSD(euro: "10")
        let expected = "$10.80"
        
        // testing if it's equal to what we're expecting
        XCTAssertEqual(actual, expected)
    }

}
