//
//  Item.swift
//  weather
//
//  Created by Anshuman Sharma on 31/07/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
