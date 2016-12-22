//
//  UserDataStoreFactory.swift
//  Swift-CleanArchitecture
//
//  Created by Khaled Hashish on 12/22/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

import Foundation

public class UserDataStoreFactory : NSObject {
    func createUserCloudDataStore() -> UserDataStore
    {
        let cloudUserDataStore = CloudUserDataStore()
        cloudUserDataStore.restApi = RestApiImpl()
        return cloudUserDataStore
    }
}
