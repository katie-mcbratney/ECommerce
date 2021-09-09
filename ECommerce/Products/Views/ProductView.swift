//
//  ProductView.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//
import SwiftUI

struct ProductView: View {
    var product: Product
    var view: String
    //@ObservedObject productManager: ProductManager
    
    var body: some View {
        HStack {
            AsyncImage.init(url: URL(string: product.image)!) {
                RoundedRectangle(cornerRadius:10)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
            }image: { (img) -> Image in
                Image(uiImage: img)
                    .resizable()
            }
            .scaledToFill()
            .frame(width: 100, height: 100)
            .cornerRadius(10)
            Text(product.title).font(.body)
            Spacer()
            
            Text("$\(String(format: "%.2f", product.price))")
                .background(RoundedRectangle(cornerRadius: 5)
                                .fill(Color("\(view)-background").opacity(0.4))
                                .frame(width:65, height: 50))
            
        }
        
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        let product = Product(title: "Sample Product", price: 10.99, description: "sample sample", image: "icons8-software-24")
        ProductView(product: product, view: "Products")
    }
}
