//
//  User.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import Foundation

struct User {
    let fname: String
    let lname: String
    let image: String?
    let phone: String?
    let email: String?
    
    init (fname: String, lname: String, image: String? = "anonymous_user", phone: String? = nil, email: String? = nil) {
        self.fname = fname
        self.lname = lname
        self.image = image
        self.phone = phone
        self.email = email
    }
}
