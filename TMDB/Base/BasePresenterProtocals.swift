//
//  BaseProtocals
//  TMDB
//
//  Created Bassem Abbas on 9/24/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

@objc
protocol PresenterLifeCycleProtocol {
    
    
    @objc
    optional func loadView()
    @objc
    optional func viewDidLoad()
    @objc
    optional func viewWillAppear()
    @objc
    optional func viewDidAppear()
    @objc
    optional func viewWillDisappear()
    @objc
    optional func viewDidDisappear()
}

protocol BasePresenterProtocol:PresenterLifeCycleProtocol {
    
}

protocol BasePresenterAssembable {
    
    associatedtype View where View : BaseViewProtocal
    associatedtype Model where Model : BaseModelProtocal
    
    /// weak refrance to view
    var view: View? { get set }
    /// strong refrance to model
    var model: Model { get set }
    
    init(view: View, model: Model)
}
