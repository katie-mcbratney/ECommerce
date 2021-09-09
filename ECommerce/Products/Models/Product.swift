//
//  Product.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import Foundation

struct Product: Codable, Identifiable, Equatable {
    
    var id: UUID {return UUID()}
    let title: String
    let price: Double
    let description: String
    let image: String
    
}
