//
//  ProductView.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//
import SwiftUI

struct ProductView: View {
    var image: String
    var name: String
    var price: Double
    
    var body: some View {
        HStack {
            //AsyncImage(url: URL(string: image))
            //Image(image)
            AsyncImage.init(url: URL(string: image)!) {
                RoundedRectangle(cornerRadius:10)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
            }image: { (img) -> Image in
                Image(uiImage: img)
                    .resizable()
            }
            .scaledToFill()
            .frame(width: 100, height: 100)
            .cornerRadius(10)
            Text(name).font(.title2)
            Spacer()
            
            Text("$\(String(format: "%.2f", price))")
                .background(RoundedRectangle(cornerRadius: 5).fill(Color("Products-background").opacity(0.4))
                                .frame(width:65, height: 50))
        }.padding(15)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(image: "icons8-software-24", name:"Sample Product", price: 10.99)
    }
}
