//
//  UseCase.swift
//  Swift-CleanArchitecture
//
//  Created by Khaled Hashish on 12/21/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

public class UseCase<T> : NSObject{
    var disposable : Disposable?
    
    public func buildUseCaseObservable() -> Observable<T>? {
        fatalError("Subclasses of UseCase must implement buildUseCaseObservable")
    }
    
    public func execute(subscriber: DefaultSubscriber<T>) {
        disposable = self.buildUseCaseObservable()?.subscribeOn(MainScheduler.instance).observeOn(MainScheduler.instance).subscribe({ event in
            switch event {
            case .next(let value):
                subscriber.onNext(t: value)
                break
            case .completed:
                subscriber.onCompleted()
                break
            case .error(let error):
                subscriber.onError(error: error)
                break
            }
        })
    }
    
    
}

