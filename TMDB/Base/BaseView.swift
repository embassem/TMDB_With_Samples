//
//  BaseViewProtocal
//  TMDB
//
//  Created Bassem Abbas on 9/24/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

@objc
protocol BaseViewProtocal: ViewLoadable, ViewFetchable, ViewMessageable {
    
}


@objc
protocol ViewLoadable:class {
    
    // MARK: - Load Indicator
    @objc
    optional func showLoading(allowNavigation:Bool)
    @objc
    optional func hideLoading()
}

@objc
protocol ViewFetchable:class {
    
    // MARK: - Load Data
    @objc
    optional func fetchDataSuccess(date:Any)
    @objc
    optional func fetchDataFailed(with error: Error?)
    
}

@objc
protocol ViewMessageable:class {
    
    // MARK: - Load Indicator
    @objc
    optional func showSuccessMessage(title: String?, message: String?)
    @objc
    optional func showErrorMessage(title: String?, message: String?)
}
