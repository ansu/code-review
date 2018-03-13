//
//  PrivilegeClubServiceImpl.swift
//  fingo-partner
//
//  Created by Ravi Gupta on 14/11/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

class PrivilegeClubServiceImpl: PrivilegeClubServiceProtocol {
    func getPrivilegeClubDashboardDetails(_ headers: [String : String], arnCode: String, completion: @escaping (PrivilegeClubJSONModel?, Error?) -> Void) {
        _ = API.request(.privilegeClubDashboardDetails(headers: headers, arnCode: arnCode), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let privilegeClubResponse = PrivilegeClubJSONModel.mappedPrivilegeClubJSONModel(JSON)
                    completion(privilegeClubResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }
    
    func getPrivilegeClubStaticDetails(_ headers: [String : String], arnCode: String, contentType: String?, completion: @escaping (PrivilegeClubStaticDetailsJSONModel?, Error?) -> Void) {
        _ = API.request(.privilegeClubStaticContent(headers: headers, arnCode: arnCode, contentType: contentType), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let privilegeClubStaticResponse = PrivilegeClubStaticDetailsJSONModel.mappedPrivilegeClubStaticDetailsJSONModel(JSON)
                    completion(privilegeClubStaticResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }
    
    func getPrivilegeClubPeopleSpeakDetails(_ headers: [String : String], arnCode: String, completion: @escaping (PrivilegeClubPeopleSpeakJSONModel?, Error?) -> Void) {
        _ = API.request(.privilegeClubPeopleSpeakDetails(headers: headers, arnCode: arnCode), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let peopleResponse = PrivilegeClubPeopleSpeakJSONModel.mappedPrivilegeClubPeopleSpeakJSONModel(JSON)
                    completion(peopleResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }
    
    func getPrivilegeClubMagazineDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubMagazineJSONModel?, _ error: Error?) -> Void) {
        _ = API.request(.privilegeClubMagazineDetails(headers: headers, arnCode: arnCode), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let magazineResponse = PrivilegeClubMagazineJSONModel.mappedPrivilegeClubMagazineJSONModel(JSON)
                    completion(magazineResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }

    func getPrivilegeClubGalleryDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubGetGalleryJSONModel?, _ error: Error?) -> Void) {
        _ = API.request(.privilegeClubGalleryDetails(headers: headers, arnCode: arnCode), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let galleryResponse = PrivilegeClubGetGalleryJSONModel.mappedPrivilegeClubGetGalleryJSONModel(JSON)
                    completion(galleryResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }

    func getPrivilegeClubScholarshipDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubScholarshipJSONModel?, _ error: Error?) -> Void) {
        _ = API.request(.privilegeClubScholarshipDetails(headers: headers, arnCode: arnCode), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let scholarshipResponse = PrivilegeClubScholarshipJSONModel.mappedPrivilegeClubScholarshipJSONModel(JSON)
                    completion(scholarshipResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }

    func getPrivilegeClubVisitingCardDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubVisitingCardJSONModel?, _ error: Error?) -> Void) {
        _ = API.request(.privilegeClubVisitingCardDetails(headers: headers, arnCode: arnCode), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let visitingCardResponse = PrivilegeClubVisitingCardJSONModel.mappedPrivilegeClubVisitingCardJSONModel(JSON)
                    completion(visitingCardResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }

    func getPrivilegeClubLifeInsuranceDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubLifeInsuranceJSONModel?, _ error: Error?) -> Void) {
        _ = API.request(.privilegeClubLifeInsuranceDetails(headers: headers, arnCode: arnCode), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let lifeInsuranceResponse = PrivilegeClubLifeInsuranceJSONModel.mappedPrivilegeClubLifeInsuranceJSONModel(JSON)
                    completion(lifeInsuranceResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }

    func getPrivilegeClubMedicalInsuranceDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubMedicalInsuranceJSONModel?, _ error: Error?) -> Void) {
        _ = API.request(.privilegeClubMedicalInsuranceDetails(headers: headers, arnCode: arnCode), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let medicalInsuranceResponse = PrivilegeClubMedicalInsuranceJSONModel.mappedPrivilegeClubMedicalInsuranceJSONModel(JSON)
                    completion(medicalInsuranceResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }

    func getPrivilegeClubGAPDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubGAPJSONModel?, _ error: Error?) -> Void) {
        _ = API.request(.privilegeClubGAPDetails(headers: headers, arnCode: arnCode), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let gapResponse = PrivilegeClubGAPJSONModel.mappedPrivilegeClubGAPJSONModel(JSON)
                    completion(gapResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }

}
