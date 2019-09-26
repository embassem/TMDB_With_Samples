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

protocol BasePresenterProtocol: PresenterLifeCycleProtocol {
    
    init(view: BaseViewProtocal, model: BaseModelProtocal)
}
