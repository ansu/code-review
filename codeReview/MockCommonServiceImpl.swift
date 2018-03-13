//
//  MockCommonServiceImpl.swift
//  fingo-partner
//
//  Created by Kuliza-282 on 12/03/18.
//  Copyright © 2018 Kuliza-282. All rights reserved.
//

import Foundation

class MockCommonServiceImpl: CommonServiceProtocol {
    func validateOTP(_ keywords: [String : [String : String]], completion: @escaping (ValidateOTPModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func generateOTP(_ keywords: [String : [String : String]], completion: @escaping (GenerateOTPModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func getIFSCBankDetails(_ keywords: [String : AnyObject], completion: @escaping (IFSCBankDetailsModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func getListOfBanks(_ keywords: [String : AnyObject], completion: @escaping (ListOfBanksModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func getListOfCities(_ keywords: [String : AnyObject], completion: @escaping (ListOfCitiesModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func getListOfBranches(_ keywords: [String : AnyObject], completion: @escaping (ListOfBranchesModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func getNotesAndReminder(_ keywords: [String : AnyObject], completion: @escaping (GetNotesAndReminderModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func saveNotesMasterList(_ keywords: [String : AnyObject], completion: @escaping (SaveNotesMasterListModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func updateNotesMasterList(_ keywords: [String : AnyObject], completion: @escaping (UpdateNotesMasterListModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func deleteNotesMasterList(_ keywords: [String : AnyObject], completion: @escaping (DeleteNotesMasterListModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func customerAssetAllocation(_ keywords: [String : AnyObject], completion: @escaping (CustomerAssetAllocation?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func getAccountStatementByFolio(_ keywords: [String : AnyObject], completion: @escaping (GetAccountStatementByFolio?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func getSchemeMasterDetails(_ keywords: [String : AnyObject], completion: @escaping (GetSchemeMasterDetailsModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func getOTMBankDetails(_ keywords: [String : AnyObject], completion: @escaping (OTMBankDetailsJSONModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func sendAccountStatement(_ keywords: [String : AnyObject], completion: @escaping (SendAccountStatementJSONModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func registerOTMRequest(_ keywords: [String : AnyObject], completion: @escaping (OTMRegistrationJSONModel?, Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    
}
