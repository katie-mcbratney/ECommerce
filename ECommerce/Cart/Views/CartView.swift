//
//  CartView.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import SwiftUI

struct CartView: View {
    
    @ObservedObject var cartManager: CartManager
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            ZStack {
                Color("cart-background").ignoresSafeArea()
                ScrollView {
                    VStack (spacing: 10){
                        ForEach(cartManager.cartProducts) { product in
                            HStack (spacing: 20){
                                ProductView(product: product, view: "cart")
                                
                                Button(action: {
                                    showingAlert.toggle()
                                }, label: {
                                    Image(systemName: "trash")
                                        .font(.title)
                                        .foregroundColor(Color("text-wb"))
                                }).alert(isPresented: $showingAlert, content: {
                                    Alert(title: Text("Remove from Shopping Cart?"),
                                          primaryButton: Alert.Button.default(Text("Okay"), action: {
                                            print(product.title)
                                            cartManager.removeFromCart(product)
                                          }),
                                          secondaryButton: Alert.Button.cancel(Text("Cancel")))
                                })
                            }.padding(15)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color("background-wb"))
                        }
                    }
                }
            }.navigationTitle("All Products")
            
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        let cartManager = CartManager()
        CartView(cartManager: cartManager)
    }
}
