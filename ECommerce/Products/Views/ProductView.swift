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
            Text(name)
            Spacer()
            Text("$\(String(format: "%.2f", price))")
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(image: "icons8-software-24", name:"Sample Product", price: 10.99)
    }
}
