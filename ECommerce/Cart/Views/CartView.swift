//
//  CartView.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import SwiftUI

struct CartView: View {
    
    @ObservedObject var cartManager: CartManager
    
    var body: some View {
        Text("Hello world")
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(cartManager: CartManager())
    }
}
