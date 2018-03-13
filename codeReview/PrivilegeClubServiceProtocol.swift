//
//  PrivilegeClubServiceProtocol.swift
//  fingo-partner
//
//  Created by Ravi Gupta on 14/11/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

protocol PrivilegeClubServiceProtocol {
    func getPrivilegeClubDashboardDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubJSONModel?, _ error: Error?) -> Void)
    func getPrivilegeClubStaticDetails(_ headers: [String: String], arnCode: String, contentType: String?, completion:@escaping (_ result: PrivilegeClubStaticDetailsJSONModel?, _ error: Error?) -> Void)
    func getPrivilegeClubPeopleSpeakDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubPeopleSpeakJSONModel?, _ error: Error?) -> Void)
    func getPrivilegeClubMagazineDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubMagazineJSONModel?, _ error: Error?) -> Void)
    func getPrivilegeClubGalleryDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubGetGalleryJSONModel?, _ error: Error?) -> Void)
    func getPrivilegeClubScholarshipDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubScholarshipJSONModel?, _ error: Error?) -> Void)
    func getPrivilegeClubVisitingCardDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubVisitingCardJSONModel?, _ error: Error?) -> Void)
    func getPrivilegeClubLifeInsuranceDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubLifeInsuranceJSONModel?, _ error: Error?) -> Void)
    func getPrivilegeClubMedicalInsuranceDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubMedicalInsuranceJSONModel?, _ error: Error?) -> Void)
    func getPrivilegeClubGAPDetails(_ headers: [String: String], arnCode: String, completion:@escaping (_ result: PrivilegeClubGAPJSONModel?, _ error: Error?) -> Void)
}
