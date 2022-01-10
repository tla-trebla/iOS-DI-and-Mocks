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
    var appState: AppState = .notStarted
    
    init(pedometer: Pedometer) {
        self.pedometer = pedometer
    }
    
    func startPedometer() {
        
        guard self.pedometer.pedometerAvailable else {
            self.appState = .notStarted
            return
        }
        
        pedometer.start()
    }
}
