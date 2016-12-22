//
//  UserListPresenter.swift
//  Swift-CleanArchitecture
//
//  Created by Khaled Hashish on 12/21/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

import Foundation
import RxSwift

@objc public class UserListPresenter : NSObject, Presenter {
    var getUserListUseCase : UseCase<Array<User>>!
    
    public func willAppear() {
        
    }
    
    public func willDisappear() {
        
    }
    
    public func destroy() {
        
    }
    
    public func initialize()  {
        let subscriber = UserListSubscriber(userListPresenter : self)
        self.getUserListUseCase.execute(subscriber: subscriber)
    }
}

public class UserListSubscriber : DefaultSubscriber<Array<User>> {
    var userListPresenter : UserListPresenter
    
    public required init(userListPresenter : UserListPresenter) {
        self.userListPresenter = userListPresenter
    }
    
    public override func onNext(t: Array<User>) {
        print(t)
    }
    
    public override func onCompleted() {
        
    }
    
    public override func onError(error: Error) {
        
    }
}
