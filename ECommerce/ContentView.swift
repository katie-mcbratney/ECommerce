//
//  ContentView.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var productManager: ProductManager
    @ObservedObject var cartManager: CartManager
    let user = User(fname: "Katie", lname: "McBratney", image: "sample_profile")
    
    init() {
        productManager = ProductManager()
        cartManager = CartManager()
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView{
                    Text("Hello")
                }
                HStack {
                    NavigationLink(destination: ProductListView(products: productManager.products)) {
                        Label("Products", systemImage: "42.circle")
                    }
                    NavigationLink(destination: UserView(user: user)) {
                        Label("User Profile", systemImage: "24.circle")
                    }
                    NavigationLink(destination: CartView(cartProducts: cartManager.cartProducts)) {
                        Label("Shopping Cart", systemImage:"cart")
                    }
                }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
