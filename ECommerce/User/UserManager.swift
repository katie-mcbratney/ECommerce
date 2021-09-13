//
//  UserManager.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/7/21.
//

import SwiftUI
import RealmSwift

class UserManager: ObservableObject {
//    @Published var fname = ""
//    @Published var lname = ""
//    @Published var phone = ""
//    @Published var email = ""
//    @Published var image = ""
    
    @Published var openEditPage = false
    
    @Published var user: User = User()
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        print("fetching data...")
        guard let dbRef = try? Realm() else {print("failed to fetch data"); return}
        user = dbRef.objects(User.self).first ?? User()
    }
    
    func addUserData() {
        let tempUser = User()
        tempUser.fname = user.fname
        tempUser.lname = user.lname
        tempUser.phone = user.phone
        tempUser.email = user.email
        tempUser.image = user.image
        
        guard let dbRef = try? Realm() else{ return }
        
        try? dbRef.write {
            let previouses = dbRef.objects(User.self)
            dbRef.delete(previouses)
            dbRef.add(tempUser)
        }
        fetchData()
    }
    
    func setUpInitialData() {
        
    }
    
}
