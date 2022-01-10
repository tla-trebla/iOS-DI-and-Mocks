//
//  Pedometer.swift
//  PedometerApp
//
//  Created by Albert Pangestu on 10/01/22.
//

import Foundation

protocol Pedometer {
    
    var pedometerAvailable: Bool { get }
    var permissionDenied: Bool { get }
    func start()
}
