//
//  CMPedometer+Extensions.swift
//  PedometerApp
//
//  Created by Albert Pangestu on 10/01/22.
//

import Foundation
import CoreMotion

extension CMPedometer: Pedometer {
    
    var pedometerAvailable: Bool {
        return CMPedometer.isDistanceAvailable() && CMPedometer.isStepCountingAvailable() && CMPedometer.authorizationStatus() != .restricted
    }
    
    var permissionDenied: Bool {
        return CMPedometer.authorizationStatus() == .denied
    }
    
    func start() {
        
    }
}
