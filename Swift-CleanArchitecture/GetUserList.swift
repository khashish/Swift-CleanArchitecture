//
//  GetUserList.swift
//  Swift-CleanArchitecture
//
//  Created by Khaled Hashish on 12/21/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

import Foundation
import RxSwift

public class GetUserList : UseCase<Array<User>>
{
    var userRepository : UserRepository!
    
    public override func buildUseCaseObservable() -> Observable<Array<User>>? {
        return userRepository.users()
    }
}
