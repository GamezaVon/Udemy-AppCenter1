//
//  MinutesTestsNoIse.swift
//  MinutesTestsNoIse
//
//  Created by Daniel Gamez Navarro on 4/23/19.
//  Copyright © 2019 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes
class MinutesTestsNoIse: XCTestCase {

    var entryUnderTest: Entry!
    
    
    override func setUp() {
        entryUnderTest = Entry("Title", "Content")
    }

    override func tearDown() {
        entryUnderTest = nil
    }

    func testSerialization() {
        let serializedData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serializedData!)
        
        XCTAssertEqual(entry?.title, "Titlesd", "Title does not match")
        XCTAssertEqual(entry?.content, "Content", "Content does not match")
    }
    
}
