//
//  RestApiImpl.swift
//  Swift-CleanArchitecture
//
//  Created by Khaled Hashish on 12/22/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire
import ObjectMapper
import SwiftyJSON

public class RestApiImpl : RestApi {
    public func users() -> Observable<Array<User>> {
       return Observable<Array<User>>.create { (observer) -> Disposable in
            Alamofire.request("http://jsonplaceholder.typicode.com/users").validate().responseJSON { response in
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    let users = Mapper<User>().mapArray(JSONString : json.rawString()!)
                    observer.onNext(users!)
                    observer.onCompleted()
                case .failure(let error):
                    observer.onError(error)
                
                }
                
            }
        
        
            return Disposables.create()
        }
    }
}
