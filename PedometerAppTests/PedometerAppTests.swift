//
//  PedometerAppTests.swift
//  PedometerAppTests
//
//  Created by Albert Pangestu on 10/01/22.
//

import XCTest
import CoreMotion

class PedometerAppTests: XCTestCase {

    func test_StartsPedometer() {
        
        let now = Date()
        var data: CMPedometerData?
        let then = now.addingTimeInterval(-1000)
        
        let pedometer = CMPedometer()
        let exp = expectation(description: "Pedometer query returns...")
        pedometer.queryPedometerData(from: now, to: then) { pedometerData, error in
            data = pedometerData
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 1.0)
        XCTAssertNotNil(data)
        if let steps = data?.numberOfSteps {
            XCTAssertTrue(steps.intValue > 0)
        }
    }

}
