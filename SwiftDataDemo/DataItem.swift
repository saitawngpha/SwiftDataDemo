//
//  DataItem.swift
//  SwiftDataDemo
//
//  Created by Steve Pha on 13/04/2024.
//

import Foundation
import SwiftData

@Model
class DataItem: Identifiable {
    
    var id: String
    var name: String
    
    init( name: String) {
        id = UUID().uuidString
        self.name = name
    }
}
