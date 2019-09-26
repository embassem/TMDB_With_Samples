//
//  AppDelegate+Extensions.swift
//  TMDB
//
//  Created by Bassem Abbas on 9/26/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

extension AppDelegate {
    
    func setupNetworking(){
        NetworkManager.shared = NetworkManager(config: NetworkDefaults())
    }
    
}
