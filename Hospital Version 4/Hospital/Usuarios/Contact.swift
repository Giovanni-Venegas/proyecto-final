//
//  Contact.swift
//  FirebaseCRUD
//
//  Created by Manuel Rodriguez Sebastian on 3/2/23.
//

import Foundation
import FirebaseFirestoreSwift

struct Contact: Codable {
    @DocumentID var id: String?
    var name: String?
    var phone: String?
    var lastname: String?
    
    init(id: String? = nil, name: String? = nil, phone: String? = nil, lastname: String? = nil) {
        self.id = id
        self.name = name
        self.phone = phone
        self.lastname = lastname
    }
}
