//
//  BaseViewController.swift
//  TMDB
//
//  Created Bassem Abbas on 9/24/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import UIKit
import Foundation

class BaseViewController<Presenter:BasePresenterProtocol>: UIViewController, BaseViewProtocal {
    
    // MARK: - Public Variables
    
    // MARK: - Private Variables
    
    var presenter:Presenter!
    
    // MARK: - Computed Variables
    
    // MARK: - IBOutlets
    
    
    public func setPresenter (presenter: Presenter) {
        self.presenter = presenter
    }
}
