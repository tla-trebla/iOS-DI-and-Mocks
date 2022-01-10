//
//  MockPedometer.swift
//  PedometerAppTests
//
//  Created by Albert Pangestu on 10/01/22.
//

import Foundation
@testable import PedometerApp

class MockPedometer: Pedometer {
    
    var pedometerAvailable: Bool = true
    
    private (set) var started = false
    
    func start() {
        started = true
    }
}
