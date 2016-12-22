//
//  ApplicationAssembly.swift
//  Swift-CleanArchitecture
//
//  Created by Khaled Hashish on 12/21/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//
import Foundation
import Typhoon


open class ApplicationAssembly: TyphoonAssembly {
    
    dynamic func viewController() -> Any {
        return TyphoonDefinition.withClass(ViewController.self) {
            (definition) in
            definition!.injectProperty(NSSelectorFromString("userListPresenter"), with: self.presenter())

        }
    }
    
    dynamic func presenter() -> Any! {
//        return TyphoonDefinition.withClass(UserListPresenter.self) {
//            (definition) in
//            definition!.injectProperty(NSSelectorFromString("getUserListUseCase"), with:self.getUserListUseCase());
//        }
        
        let getUserListUseCase = self.getUserListUseCase()
        let presenter = UserListPresenter()
        presenter.getUserListUseCase = getUserListUseCase as! UseCase<Array<User>>!
        return presenter
    }
    
    dynamic func getUserListUseCase() -> Any! {
//        return TyphoonDefinition.withClass(GetUserList.self) {
//            (definition) in
//            definition!.injectProperty(NSSelectorFromString("userRepository"), with:self.userRepository());
//        }
        
        let userRepository = self.userRepository()
        let getUserListUseCase = GetUserList()
        getUserListUseCase.userRepository = userRepository as! UserRepository!
        return getUserListUseCase

    }
    
    dynamic func userRepository() -> Any! {
//        return TyphoonDefinition.withClass(UserDataRepository.self) {
//            (definition) in
//            definition!.injectProperty(NSSelectorFromString("userDataStoreFactory"), with:self.userDataStoreFactory());
//        }
        
        let userDataStoreFactory = self.userDataStoreFactory()
        let userDataRepository = UserDataRepository()
        userDataRepository.userDataStoreFactory = userDataStoreFactory as! UserDataStoreFactory!
        return userDataRepository
    }
    
    dynamic func userDataStoreFactory() -> Any! {
//        return TyphoonDefinition.withClass(UserDataStoreFactory.self) {
//            (definition) in
//            
//        }
        
        return UserDataStoreFactory()
    }
    
}
