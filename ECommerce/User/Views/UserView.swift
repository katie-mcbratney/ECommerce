//
//  UserView.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import SwiftUI

struct UserView: View {
    
    let name: String
    let profilePic: String?
    let email: String?
    let phone: String?
    
    init(user: User){
        self.name = "\(user.fname) \(user.lname)"
        self.profilePic = user.image
        self.email = user.email
        self.phone = user.phone
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 15.0) {
            Text(name).font(.title)
                .padding(.top, 50)
            Image(profilePic!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:150, alignment: .center)
                .clipShape(Circle())
            Text("Contact Information").font(.title2)
            HStack {
                VStack(alignment: .leading, spacing: 10.0){
                    Text("Phone Number: ")
                    Text("Email: ")
                }
                VStack (alignment: .leading, spacing: 10.0){
                    if phone != nil { Text("\(phone!)")}
                    else { Text("Enter Phone Number").foregroundColor(.gray) }
                    if email != nil { Text("\(email!)") }
                    else { Text("Enter Email").foregroundColor(.gray) }
                }
            }
            Spacer()
        }
    }
}

struct UserView_Previews: PreviewProvider {
    //var user: User
    static var previews: some View {
        UserView(user: User(fname: "Katie", lname: "McBratney"))
    }
}
