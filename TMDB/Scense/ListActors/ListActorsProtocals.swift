//
//  ListActorsProtocals.swift
//  TMDB
//
//  Created by Bassem Abbas on 9/24/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

protocol ListActorsPresenterProtocal: BasePresenterProtocol {
    
    var currentPage:Int { get set }
    
    func activateSearch()
    func cancelSearch()
    func loadActors()
    func refreshActores()
    func loadMoreActores()
    
}

protocol ListActorsViewProtocal:BaseViewProtocal {
    
}

protocol ListActorsModelProtocal:BaseModelProtocal {
    func getActors(forPage page:Int , compelation: Result<Any,Error>)
}
