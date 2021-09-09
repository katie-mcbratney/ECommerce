//
//  CartManager.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cartProducts = [Product]()
    
    
    func addToCart(_ product: Product) {
        cartProducts.append(product)
    }
    
    func removeFromCart(_ product: Product) {
        print(product.title)
        if let index = cartProducts.firstIndex(of: product) {
            cartProducts.remove(at: index)
        }
    }
}
