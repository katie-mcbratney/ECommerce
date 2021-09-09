//
//  User.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import Foundation
import RealmSwift

class User: Object, Identifiable {
    @objc dynamic var id : UUID = UUID()
    @objc dynamic var fname = ""
    @objc dynamic var lname = ""
    @objc dynamic var image = ""
    @objc dynamic var phone = ""
    @objc dynamic var email = ""
}
