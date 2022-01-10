//
//  PedometerAppTests.swift
//  PedometerAppTests
//
//  Created by Albert Pangestu on 10/01/22.
//

import XCTest
import CoreMotion
@testable import PedometerApp

class PedometerAppTests: XCTestCase {

    func test_StartsPedometer() {
        
        let mockPedometer = MockPedometer()
        let viewModel = PedometerViewModel(pedometer: mockPedometer)
        
        viewModel.startPedometer()
        
        XCTAssertEqual(mockPedometer.start, true)
    }

}
