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
    @ObservedObject var userManager: UserManager
    //@StateObject var userManager = UserManager()
    
    init() {
        productManager = ProductManager()
        cartManager = CartManager()
        userManager = UserManager()
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("background").ignoresSafeArea()
                VStack {
                    ScrollView{

                    }
                    HStack(spacing: 40.0) {
                        NavigationLink(destination: ProductListView(productManager: productManager, cartManager: cartManager)) {
                            VStack{
                                Image(systemName: "bag")
                                    .resizable()
                                    .frame(width: 50, height: 50, alignment: .center)
                                Text("Products")
                            }.foregroundColor(Color("Products-background"))
                            
                        }
                        NavigationLink(destination: UserView(userManager: userManager)) {
                            VStack {
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 50, height: 50, alignment: .center)
                                Text("User Profile")
                            }.foregroundColor(Color("User-background"))
                        }
                        NavigationLink(destination: CartView(cartManager: cartManager)) {
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
