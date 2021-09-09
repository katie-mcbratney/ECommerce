//
//  ProductListView.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import SwiftUI

struct ProductListView: View {
    
    @ObservedObject var productManager: ProductManager
    @ObservedObject var cartManager: CartManager
    @State private var showingAlert = false

    
    var body: some View {
        ZStack {
            Color("Products-background").ignoresSafeArea()
            ScrollView {
                VStack (spacing: 10){
                                    
                    ForEach(productManager.products) { product in
                        HStack (spacing: 20){
                            ProductView(product: product, view: "Products")
                            Button(action: {
                                cartManager.addToCart(product)
                                showingAlert.toggle()
                            }, label: {
                                Image(systemName: "plus")
                                    .font(.title)
                                    .foregroundColor(Color("text-wb"))
                            }).alert(isPresented: $showingAlert, content: {
                                Alert(title: Text("Added to Shopping Cart"), dismissButton: Alert.Button.default(Text("Okay")))
                            })
                        }.padding(15)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color("background-wb"))
                        //.cornerRadius(60)
                        
                    }
                }
            }
        }.navigationTitle("All Products")
        
    }
    
}


struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        
        let productManager = ProductManager()
        let cartManager = CartManager()
        ProductListView(productManager: productManager, cartManager: cartManager)
    }
}
