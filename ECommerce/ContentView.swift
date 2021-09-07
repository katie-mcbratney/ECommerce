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
            ZStack {
                Color("background").ignoresSafeArea()
                VStack {
                    ScrollView{

                    }
                    HStack(spacing: 40.0) {
                        NavigationLink(destination: ProductListView(products: productManager.products)) {
                            VStack{
                                Image(systemName: "bag")
                                    .resizable()
                                    .frame(width: 50, height: 50, alignment: .center)
                                Text("Products")
                            }.foregroundColor(Color("Products-background"))
                            
                        }
                        NavigationLink(destination: UserView(user: user)) {
                            VStack {
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 50, height: 50, alignment: .center)
                                Text("User Profile")
                            }.foregroundColor(Color("User-background"))
                        }
                        NavigationLink(destination: CartView(cartProducts: cartManager.cartProducts)) {
                            VStack {
                                Image(systemName: "cart")
                                    .resizable()
                                    .frame(width: 50, height: 50, alignment: .center)
                                Text("Shopping Cart")
                            }.foregroundColor(Color("cart-background"))
                        }
                    }
                }.navigationTitle("Home")
            }
            
            
        }.accentColor(Color("text-wb"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
