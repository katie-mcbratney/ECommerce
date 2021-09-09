//
//  UserView.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import SwiftUI

struct UserView: View {
    
    @ObservedObject var userManager: UserManager
    
//    let name: String
//    let profilePic: String
//    let email: String?
//    let phone: String?

    
//    init(userManager: UserManager){
////        name = "\(userManager.fname) \(userManager.lname)"
////        profilePic = userManager.image
////        email = userManager.email
////        phone = userManager.phone
//        //self.userManager = userManager
//    }
    
    var body: some View {
        ZStack {
            Color("User-background").ignoresSafeArea()
            VStack(alignment: .center, spacing: 15.0) {
                Text("\(userManager.user.fname) \(userManager.user.lname)").font(.largeTitle)
                    .padding(.top, 50)
                Image(userManager.user.image)
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
                        if userManager.user.phone != "" { Text("\(userManager.user.phone)")}
                        else { Text("No Phone Number").foregroundColor(Color(hue: 1.0, saturation: 0.088, brightness: 0.24)) }
                        if userManager.user.email != "" { Text("\(userManager.user.email)") }
                        else { Text("No Email").foregroundColor(Color(hue: 1.0, saturation: 0.088, brightness: 0.24)) }
                    }
                }
                Button("Edit Info") {
                    userManager.openEditPage.toggle()
                }.foregroundColor(Color("background-wb"))
                .background(RoundedRectangle(cornerRadius: 20)
                                .fill(Color("user-button"))
                                .frame(width:100, height:30))
                .sheet(isPresented: $userManager.openEditPage, content: {
                    EditView()
                        .environmentObject(userManager)
                })
                Spacer()
            }.navigationTitle("Profile")
            .onAppear(perform: userManager.fetchData)
        }
        
    }
}

//struct UserView_Previews: PreviewProvider {
//    var userManager = UserManager()
//    static var previews: some View {
//        UserView(userManager: userManager)
//    }
//}
