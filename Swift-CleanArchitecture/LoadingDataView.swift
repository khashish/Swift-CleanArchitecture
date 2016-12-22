//
//  LoadingDataView.swift
//  Swift-CleanArchitecture
//
//  Created by Khaled Hashish on 12/21/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

import Foundation

public protocol LoadDataView {
    func showLoadingView()
    func hideLoadingView()
    func showErrorMessage(errorMessage: String)
}
