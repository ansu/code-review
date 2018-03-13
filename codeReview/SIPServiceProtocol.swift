//
//  SIPServiceProtocol.swift
//  fingo-partner
//
//  Created by Purushottam Chandra on 20/09/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

protocol SIPServiceProtocol {
    func getSIPGoalDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetSIPGoalDetailsModel?, _ error: Error?) -> Void)
}
