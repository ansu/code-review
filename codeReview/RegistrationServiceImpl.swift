//
//  RegistrationServiceImpl.swift
//  fingo-partner
//
//  Created by Purushottam Chandra on 13/07/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

class RegistrationServiceImpl: RegistrationServiceProtocol {

    // Capture Lead Details
    func captureLeadDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: CaptureLeadModel?, _ error: Error?) -> Void) {
        _ = API.request(.captureLeadDetails(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let captureLeadDetailsResponse = CaptureLeadModel.mappedCaptureLeadModel(JSON)
                    completion(captureLeadDetailsResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func checkKYCStatus(_ keywords: [String: AnyObject], completion: @escaping (_ result: CheckKYCStatusModel?, _ error: Error?) -> Void) {
        _ = API.request(.checkKYCStatus(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let checkKYCStatusResponse = CheckKYCStatusModel.mappedCheckKYCStatusModel(JSON)
                    completion(checkKYCStatusResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func ValidateAadharCard(_ keywords: [String: AnyObject], completion: @escaping (_ result: ValidateAadharNoModel?, _ error: Error?) -> Void) {

        _ = API.request(.ValidateAadharNo(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    completion(ValidateAadharNoModel.mappeValidateAadharNoModel(JSON), response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func ValidateAadharOTP(_ keywords: [String: AnyObject], completion: @escaping (_ result: ValidateAdharOTP?, _ error: Error?) -> Void) {

        _ = API.request(.ValidateAadharOTP(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {

                    let validateAdharObj = ValidateAdharOTP.mappedValidateAdharOTP(JSON)
                    //                    if validateAdharObj.returnCode == AppConstants.ResponseCode.Success.rawValue{
                    //                        saveUserData(validateAdharObj.eKYCAdharDetails!)
                    //                    }
                    completion(validateAdharObj, response.result.error as NSError?)

                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func NewFolioCreation(_ keywords: [String: AnyObject], completion: @escaping (_ result: NewFolioCreationModel?, _ error: Error?) -> Void) {

        _ = API.request(.newFolioCreation(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    if let JsonDict = JSON["NewFolioCreationResult"] as? [String: AnyObject] {
                        let newFolioCreationObj = NewFolioCreationModel.mappedNewFolioCreationModel(JsonDict)
                        completion(newFolioCreationObj, response.result.error)
                    } else {
                        completion(nil, response.result.error)
                    }

                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func deleteLeadDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: DeleteLeadDetailsModel?, _ error: Error?) -> Void) {
        _ = API.request(.deleteLeadDetails(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let deleteLeadResponse = DeleteLeadDetailsModel.mappedDeleteLeadDetailsModel(JSON)
                    completion(deleteLeadResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func ValidatePANCard(_ keywords: [String: AnyObject], completion:@escaping (_ result: ActiveAccountValidatePANModel?, _ error: Error?) -> Void) {
        _ = API.request(.validatePANCard(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let validatedPANResponse = ActiveAccountValidatePANModel.mappedActiveAccountValidatePANModel(JSON)
                    completion(validatedPANResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }
    
    func validateFATCA(_ keywords: [String : AnyObject], completion: @escaping (ValidateFatcaJSONModel?, Error?) -> Void) {
        _ = API.request(.validateFATCA(keywords), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let validatedResponse = ValidateFatcaJSONModel.mappedValidateFatcaJSONModel(JSON)
                    completion(validatedResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }
    
    func updateFATCA(_ keywords: [String : AnyObject], completion: @escaping (BaseNetworkingModel?, Error?) -> Void) {
        _ = API.request(.updateFATCA(keywords), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let data = BaseNetworkingModel.mappedBaseNetworkingModel(JSON)
                    completion(data, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }
}
