//
//  EditView.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import SwiftUI

struct EditView: View {
    
    @Binding var fname: String
    @Binding var lname: String
    @Binding var phone: String
    @Binding var email: String
    
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            VStack(spacing: 20) {
                Image("anonymous_user")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:150, alignment: .center)
                    .clipShape(Circle())
                HStack {
                    VStack(spacing:20) {
                        Text("First Name: ")
                        Text("Last Name: ")
                        Text("Phone Number: ")
                        Text("Email: ")
                    }
                    VStack(spacing: 20) {
                        TextField("Ex: John", text: $fname)
                        TextField("Ex: Smith", text: $lname)
                        TextField("(###)-###-####", text: $phone)
                        TextField("Ex: johnsmith@gmail.com", text: $email)
                    }
                }
                Button("Submit") {
                    
                }
            }
            
        }
    }
    
    
    
    
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView(fname: .constant(""), lname: .constant(""),phone: .constant(""),email: .constant(""))
    }
}
