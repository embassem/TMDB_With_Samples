//
//	APIResponse.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct APIResponse<T:Codable> : Codable {

	let page : Int?
	let results : [T]?
	let totalPages : Int?
	let totalResults : Int?


	enum CodingKeys: String, CodingKey {
		case page = "page"
		case results = "results"
		case totalPages = "total_pages"
		case totalResults = "total_results"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		page = try values.decodeIfPresent(Int.self, forKey: .page)
		results = try values.decodeIfPresent([T].self, forKey: .results)
		totalPages = try values.decodeIfPresent(Int.self, forKey: .totalPages)
		totalResults = try values.decodeIfPresent(Int.self, forKey: .totalResults)
	}


}
