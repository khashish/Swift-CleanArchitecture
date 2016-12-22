//
//  ViewController.swift
//  Swift-CleanArchitecture
//
//  Created by Khaled Hashish on 12/21/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    dynamic var userListPresenter : UserListPresenter!
    dynamic var objectiveCDefinition: NSString!
//    open public(set) var assembly : ApplicationAssembly!
    
//    public dynamic init(presenter : UserListPresenter, assembly : ApplicationAssembly) {
//        
//        self.presenter = presenter
//        self.assembly = assembly
//        
//        super.init(nibName: nil, bundle: nil)
//        
//    }
//    
//    public required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        userListPresenter.initialize()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

