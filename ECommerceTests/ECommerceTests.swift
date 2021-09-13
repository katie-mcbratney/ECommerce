//
//  ECommerceTests.swift
//  ECommerceTests
//
//  Created by Katie McBratney on 9/9/21.
//
@testable import ECommerce
import XCTest

class ECommerceTests: XCTestCase {
    
    var network: Network!
    
    override func setUp() {
        super.setUp()
        network = Network()
    }
    
    override func tearDown() {
        network = nil
        super.tearDown()
    }

    func testFetchDataSucceeds() throws {
        
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
