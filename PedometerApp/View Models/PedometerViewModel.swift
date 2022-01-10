//
//  PedometerViewModel.swift
//  PedometerApp
//
//  Created by Albert Pangestu on 10/01/22.
//

import Foundation

enum AppState {
    case notStarted
    case inProgress
}

class PedometerViewModel {
    
    var pedometer: Pedometer
    
    init(pedometer: Pedometer) {
        self.pedometer = pedometer
    }
    
    func startPedometer() {
        pedometer.startPedometer()
    }
}
