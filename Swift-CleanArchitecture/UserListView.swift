//
//  UserListView.swift
//  Swift-CleanArchitecture
//
//  Created by Khaled Hashish on 12/21/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

import Foundation

public protocol UserListView : LoadDataView
{
    func renderUserList(users: Array<NSObject>)
}
