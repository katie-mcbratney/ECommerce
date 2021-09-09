//
//  EditView.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import SwiftUI

struct EditView: View {
    
    @EnvironmentObject var userManager: UserManager
    @Environment(\.presentationMode) var presentation
    
    
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
                        TextField("Ex: John", text: $userManager.user.fname)
                        TextField("Ex: Smith", text: $userManager.user.lname)
                        TextField("(###)-###-####", text: $userManager.user.phone)
                        TextField("Ex: johnsmith@gmail.com", text: $userManager.user.email)
                    }
                }
                HStack (spacing: 70){
                    Button(action: {
                        userManager.addUserData()
                        presentation.wrappedValue.dismiss()
                    }, label: {
                        Text("Submit")
                    }).foregroundColor(Color("background-wb"))
                    .background(RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("user-button"))
                                    .frame(width:100, height:30))
                    Button(action:{presentation.wrappedValue.dismiss()}, label: {Text("Cancel")})
                        .foregroundColor(Color("background-wb"))
                        .background(RoundedRectangle(cornerRadius: 20)
                                        .fill(Color("user-button"))
                                        .frame(width:100, height:30))
                }
                //.onDisappear(perfom: userManager.deInitData())
                
            }
            
        }
    }
    
    
    
    
}

struct EditView_Previews: PreviewProvider {
    //@EnvironmentObject var userManager = UserManager()
    static var previews: some View {
        EditView()
    }
}
