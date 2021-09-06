//
//  ProductListView.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import SwiftUI

struct ProductListView: View {
    
    @State var products: [Product]
    
    init(products: [Product]) {
        self.products = products
    }
    
    var body: some View {
        VStack {
            ScrollView {
//                ProductView(image: "icons8-software-24", name: "Sample", price: 10.99)
//                ProductView(image: "icons8-software-24", name: "Sample", price: 10.99)
//                ProductView(image: "icons8-software-24", name: "Sample", price: 10.99)
                                
                ForEach(products) { product in
                    ProductView(image: product.image, name: product.title, price: product.price)
                }
            }
        }
    }
    
}


struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        let productManager = ProductManager()
        ProductListView(products: productManager.products)
    }
}
