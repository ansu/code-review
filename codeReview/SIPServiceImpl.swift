//
//  SIPServiceImpl.swift
//  fingo-partner
//
//  Created by Purushottam Chandra on 20/09/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

class SIPServiceImpl: SIPServiceProtocol {
    func getSIPGoalDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetSIPGoalDetailsModel?, _ error: Error?) -> Void) {
        _ = API.request(.getSIPGoalDetails(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let getSIPGoalDetailsModelResponse = GetSIPGoalDetailsModel.mappedGetSIPGoalDetailsModel(JSON)
                    completion(getSIPGoalDetailsModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }
}
