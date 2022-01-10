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
        
        XCTAssertEqual(mockPedometer.started, true)
    }
    
    func test_PedometerNotAuthorized_DoesNotStart() {
        
        let mockPedometer = MockPedometer()
        mockPedometer.pedometerAvailable = true
        mockPedometer.permissionDenied = true
        
        let viewModel = PedometerViewModel(pedometer: mockPedometer)
        
        viewModel.startPedometer()
        
        XCTAssertEqual(viewModel.appState, .notStarted)
    }
    
    func test_PedometerDoesNotAvailable_DoesNotStart() {
        
        let mockPedometer = MockPedometer()
        mockPedometer.pedometerAvailable = false
        
        let viewModel = PedometerViewModel(pedometer: mockPedometer)
        
        viewModel.startPedometer()
        
        XCTAssertEqual(viewModel.appState, .notStarted)
    }

}
