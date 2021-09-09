//
//  ProductManager.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import Foundation

final class ProductManager: ObservableObject, NetworkDelegate {
    
    @Published var products = [Product]()
    let urlString = "https://fakestoreapi.com/products"
    var network = Network()
    
    
    func didFetchProducts(_ network: Network, products: [Product]) {
        self.products = products
    }
    
    func didFailWithError(error: Error) {
        print("Error: \(error)")
    }
    
    init() {
        network.delegate = self
        network.fetchProducts(urlString: urlString)
    }
    
    
        
}

protocol ProductManagerDelegate {
    func didFetchProducts(_ productManager: ProductManager, products: [Product])
    func didFailWithError(error: Error)
}

