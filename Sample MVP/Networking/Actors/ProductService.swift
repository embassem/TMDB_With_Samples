//
//  ProductService.swift
//  Sample MVP
//
//  Created by Bassem Abbas on 9/18/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation
import Moya

//swiftlint:disable  force_unwrapping

enum  ActorsService {
    case readProducts
}

extension ProductService: TargetType {
    var baseURL: URL {
        return URL(string: NetworkManager.shared.networkConfig?.baseUrl ?? "")!
    }
    
    var path: String {
        switch self {
        case .readProducts:
            return "api/items"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .readProducts:
            return .get
        }
    }
    
    var sampleData: Data {
        switch self {
        case .readProducts:
            return Data()
        }
    }
    
    var task: Task {        
        switch self {
        case .readProducts :
            return .requestPlain
        }
    }
    
    var headers: [String: String]? {
        return nil
    }
}
