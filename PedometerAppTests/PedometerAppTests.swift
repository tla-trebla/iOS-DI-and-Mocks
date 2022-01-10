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
        
        let viewModel = PedometerViewModel()
        
        viewModel.startPedometer()
        
        XCTAssertEqual(viewModel.pedometer.start, true)
    }

}
