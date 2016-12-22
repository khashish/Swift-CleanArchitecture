//
//  CloudUserDataStore.swift
//  Swift-CleanArchitecture
//
//  Created by Khaled Hashish on 12/21/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

import Foundation
import RxSwift

public class CloudUserDataStore : UserDataStore{
    
    var restApi : RestApi!
    
    public func users() -> Observable<Array<User>> {
        return self.restApi.users()
    }
}
