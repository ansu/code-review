//
//  LoginNetworking.swift
//  fingo-partner
//
//  Created by Shahbaz on 29/06/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

class CommonServiceImpl: CommonServiceProtocol {

    // generate OTP
    func generateOTP(_ keywords: [String: [String: String]], completion: @escaping (_ result: GenerateOTPModel?, _ error: Error?) -> Void) {
        _ = API.request(.loginGenerateOTP(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let generateOTPResponse = GenerateOTPModel.mappedGenerateOTPModel(JSON)
                    completion(generateOTPResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    // validate OTP
    func validateOTP(_ keywords: [String: [String: String]], completion: @escaping (_ result: ValidateOTPModel?, _ error: Error?) -> Void) {
        _ = API.request(.loginValidateOTP(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let validateOTPResponse = ValidateOTPModel.mappedValidateOTPModel(JSON)
                    completion(validateOTPResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    // Bank Details from IFSC Code
    func getIFSCBankDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: IFSCBankDetailsModel?, _ error: Error?) -> Void) {
        _ = API.request(.ifscBankDetails(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let ifscBankDetailsResponse = IFSCBankDetailsModel.mappedIFSCBankDetailsModel(JSON)
                    completion(ifscBankDetailsResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    // List of Banks
    func getListOfBanks(_ keywords: [String: AnyObject], completion: @escaping (_ result: ListOfBanksModel?, _ error: Error?) -> Void) {
        _ = API.request(.listOfBanks(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let listOfBanksResponse = ListOfBanksModel.mappedListOfBanksModel(JSON)
                    completion(listOfBanksResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    // List of Cities
    func getListOfCities(_ keywords: [String: AnyObject], completion: @escaping (_ result: ListOfCitiesModel?, _ error: Error?) -> Void) {
        _ = API.request(.listOfCities(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let listOfCitiesResponse = ListOfCitiesModel.mappedListOfCitiesModel(JSON)
                    completion(listOfCitiesResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    // List of Branches
    func getListOfBranches(_ keywords: [String: AnyObject], completion: @escaping (_ result: ListOfBranchesModel?, _ error: Error?) -> Void) {
        _ = API.request(.listOfBranches(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let listOfBranchesResponse = ListOfBranchesModel.mappedListOfBranchesModel(JSON)
                    completion(listOfBranchesResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    // Notes and Reminder
    func getNotesAndReminder(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetNotesAndReminderModel?, _ error: Error?) -> Void) {
        _ = API.request(.getNotesAndReminder(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let getNotesAndReminder = GetNotesAndReminderModel.mappedGetNotesAndReminderModel(JSON)
                    completion(getNotesAndReminder, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func saveNotesMasterList(_ keywords: [String: AnyObject], completion: @escaping (_ result: SaveNotesMasterListModel?, _ error: Error?) -> Void) {
        _ = API.request(.saveNotesMasterList(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let saveNotesMasterList = SaveNotesMasterListModel.mappedSaveNotesMasterListModel(JSON)
                    completion(saveNotesMasterList, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func updateNotesMasterList(_ keywords: [String: AnyObject], completion: @escaping (_ result: UpdateNotesMasterListModel?, _ error: Error?) -> Void) {
        _ = API.request(.updateNotesMasterList(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let updateNotesMasterList = UpdateNotesMasterListModel.mappedUpdateNotesMasterListModel(JSON)
                    completion(updateNotesMasterList, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func deleteNotesMasterList(_ keywords: [String: AnyObject], completion: @escaping (_ result: DeleteNotesMasterListModel?, _ error: Error?) -> Void) {
        _ = API.request(.deleteNotesMasterList(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let deleteNotesMasterList = DeleteNotesMasterListModel.mappedDeleteNotesMasterListModel(JSON)
                    completion(deleteNotesMasterList, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func customerAssetAllocation(_ keywords: [String: AnyObject], completion: @escaping (_ result: CustomerAssetAllocation?, _ error: Error?) -> Void) {
        _ = API.request(.customerAssetAllocation(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let customerAssetAllocation = CustomerAssetAllocation.mappedCustomerAssetAllocation(JSON)
                    completion(customerAssetAllocation, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func getAccountStatementByFolio(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetAccountStatementByFolio?, _ error: Error?) -> Void) {
        _ = API.request(.getAccountStatementByFolio(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let getAccountStatementByFolio = GetAccountStatementByFolio.mappedGetAccountStatementByFolio(JSON)
                    completion(getAccountStatementByFolio, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func getSchemeMasterDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetSchemeMasterDetailsModel?, _ error: Error?) -> Void) {
        _ = API.request(.getSchemeMasterDetails(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let schemeMasterResponse = GetSchemeMasterDetailsModel.mappedGetSchemeMasterDetailsModel(JSON)
                    completion(schemeMasterResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }
    
    func getOTMBankDetails(_ keywords: [String : AnyObject], completion: @escaping (OTMBankDetailsJSONModel?, Error?) -> Void) {
        _ = API.request(API.Endpoints.otmBankDetails(keywords), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let bankDetails = OTMBankDetailsJSONModel.mappedOTMBankDetailsJSONModel(JSON)
                    completion(bankDetails, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }
    
    func sendAccountStatement(_ keywords: [String : AnyObject], completion: @escaping (SendAccountStatementJSONModel?, Error?) -> Void) {
        _ = API.request(.accountStatement(keywords), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let data = SendAccountStatementJSONModel.mappedSendAccountStatementJSONModel(JSON)
                    completion(data, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        })
    }
    
    func registerOTMRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: OTMRegistrationJSONModel?, _ error: Error?) -> Void) {
        _ = API.request(.registerOTMRequest(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let otmRegResponse = OTMRegistrationJSONModel.mappedOTMRegistrationJSONModel(JSON)
                    completion(otmRegResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }

    }

}
