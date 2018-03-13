//
//  STPSWPServiceImpl.swift
//  fingo-partner
//
//  Created by Purushottam Chandra on 27/10/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

class STPSWPServiceImpl: STPSWPServiceProtocol {
    func saveSTPAdvisorTransaction(_ keywords: [String: AnyObject], completion: @escaping (_ result: SaveSTPAdvisorTranModel?, _ error: Error?) -> Void) {
        _ = API.request(.saveSTPAdvisorRequest(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let stpResponse = SaveSTPAdvisorTranModel.mappedSaveSTPAdvisorTranModel(JSON)
                    completion(stpResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func saveSWPAdvisorTransaction(_ keywords: [String: AnyObject], completion: @escaping (_ result: SaveSWPAdvisorTranModel?, _ error: Error?) -> Void) {
        _ = API.request(.saveSWPAdvisorRequest(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let swpResponse = SaveSWPAdvisorTranModel.mappedSaveSWPAdvisorTranModel(JSON)
                    completion(swpResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func saveSwitchAdvisorTransaction(_ keywords:[String:AnyObject],completion:@escaping (_ result: SaveAdvSwitchAdviceModel?, _ error: Error?) -> Void) {
        _ = API.request(.saveSwitchAdvisorRequest(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let switchResponse = SaveAdvSwitchAdviceModel.mappedSaveAdvSwitchAdviceModel(JSON)
                    completion(switchResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey:"Parsing Error"]))
                }
            }
        }
    }

    func getIRDetailsForFolio(_ keywords:[String:AnyObject],completion:@escaping (_ result: GetIRDetailsForFolioModel?, _ error: Error?) -> Void) {
        _ = API.request(.getIRDetailsForFolio(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let irDetailsResponse = GetIRDetailsForFolioModel.mappedGetIRDetailsForFolioModel(JSON)
                    completion(irDetailsResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey:"Parsing Error"]))
                }
            }
        }
    }

    func saveRedemptionAdvisorTransaction(_ keywords:[String:AnyObject],completion:@escaping (_ result: SaveAdvRedeemAdviceModel?, _ error: Error?) -> Void) {
        _ = API.request(.saveRedeemAdvisorRequest(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let redeemResponse = SaveAdvRedeemAdviceModel.mappedSaveAdvRedeemAdviceModel(JSON)
                    completion(redeemResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey:"Parsing Error"]))
                }
            }
        }
    }

}
