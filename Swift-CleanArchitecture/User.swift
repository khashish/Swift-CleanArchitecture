//
//  User.swift
//  Swift-CleanArchitecture
//
//  Created by Khaled Hashish on 12/21/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

import Foundation
import ObjectMapper

public class User : Mappable
{
    
    var userId: Int?
    var coverUrl: Int?
    var fullname: String?
    var description: String?
    var followers: Int?                       // Nested User object
    var email: String?                        // Array of Users
    
    
    required public init?(map: Map) {
        
    }
    
    // Mappable
    public func mapping(map: Map) {
        userId      <- map["id"]
        coverUrl    <- map["cover_url"]
        fullname    <- map["full_name"]
        description <- map["description"]
        followers   <- map["followers"]
        email       <- map["email"]
    }
}
