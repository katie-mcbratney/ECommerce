//
//  CartView.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import SwiftUI

struct CartView: View {
    
    var cartProducts: [Product]
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(cartProducts) { product in
                    ProductView(image: product.image, name: product.title, price: product.price)
                }
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(cartProducts: CartManager().cartProducts)
    }
}
