//
//  RestApi.swift
//  Swift-CleanArchitecture
//
//  Created by Khaled Hashish on 12/22/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

import Foundation
import RxSwift

public protocol RestApi {
    func users() -> Observable<Array<User>>;
}
