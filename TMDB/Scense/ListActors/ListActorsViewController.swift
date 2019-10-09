//
//  ListActorsViewController.swift
//  Sample MVP
//
//  Created by Bassem Abbas on 9/18/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import UIKit

class ListActorsPresenter:BasePresenter {
    
}

protocol ListView:BaseViewProtocal {
    
}
class ListActorsViewController: BaseViewController<ListActorsPresenter>,ListView{

    func loadDataSuccess(date: Any) {
        print("test")
    }
}
