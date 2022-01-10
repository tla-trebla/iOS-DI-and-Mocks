//
//  MockPedometer.swift
//  PedometerAppTests
//
//  Created by Albert Pangestu on 10/01/22.
//

import Foundation
@testable import PedometerApp

class MockPedometer: Pedometer {
    
    private (set) var start = false
    
    func startPedometer() {
        start = true
    }
}
