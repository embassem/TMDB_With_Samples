//
//  NetworkError.swift
//  Sample MVP
//
//  Created by Bassem Abbas on 9/18/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation
import Moya

enum `Type`:String, Codable {
    case business
    case system
    case mapping
}
struct NetworkError: Codable, Error {
   
    //enum (busineess , system , mapping) will know from moya error by (type / status code)
    var code: Int?
    var message: String?
    var type: Type?
//    var userInfo: [String: Any] = [:]
    
    init () {
        
    }
    
    init(error: MoyaError) {
        self.code = error.errorCode
        self.message = error.errorDescription

        switch error {
        case .underlying(let error, _):
            self.type = .system
            print(error)
//            userInfo["error"] = error
        default :
            self.type = .mapping
        }
    }
}

extension NetworkError {
    static let parseError: NetworkError = {
        var error = NetworkError()
        error.type = Type.mapping
        return error
    }()
}
