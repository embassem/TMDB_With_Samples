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
    case popular
}

extension ActorsService: TargetType {
    var baseURL: URL {
        return URL(string: NetworkManager.shared.networkConfig.baseUrl)!
    }
    
    var path: String {
        switch self {
        case .popular:
            return "/person/popular"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .popular:
            return .get
        }
    }
    
    var sampleData: Data {
        switch self {
        case .popular:
            return Data()
        }
    }
    
    var task: Task {        
        switch self {
        case .popular :
			return .requestParameters(
				parameters: ["api_key":NetworkManager.shared.networkConfig.apiKey],
				encoding: URLEncoding.default)
        }
    }
    
    var headers: [String: String]? {
        return nil
    }
}
