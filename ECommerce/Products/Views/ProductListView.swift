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
        ZStack {
            Color("Products-background").ignoresSafeArea()
            VStack {
                ScrollView {
                    ProductView(image: "icons8-software-24", name: "Sample", price: 10.99).background(Color("background-wb"))
                    ProductView(image: "icons8-software-24", name: "Sample", price: 10.99).background(Color("background-wb"))
                    ProductView(image: "icons8-software-24", name: "Sample", price: 10.99).background(Color("background-wb"))
                                    
                    ForEach(products) { product in
                        ProductView(image: product.image, name: product.title, price: product.price).background(Color("background-wb"))
                    }
                }
            }
        }.navigationTitle("All Products")
        
    }
    
}


struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        let productManager = ProductManager()
        ProductListView(products: productManager.products)
    }
}
