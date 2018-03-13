//
//  BrokerServiceImpl.swift
//  fingo-partner
//
//  Created by Kuliza-282 on 11/07/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

class BrokerServiceImpl: BrokerBaseServiceProtocol {

    // validate IFA :- ARN or RIA
    func validateIFA(_ keywords: [String: [String: String]], completion: @escaping (_ result: ValidateIFAModel?, _ error: Error?) -> Void) {
        _ = API.request(.loginValidateIFA(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let validateIFAResponse = ValidateIFAModel.mappedValidateIFAModel(JSON)
                    completion(validateIFAResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    // Validate IFA with EUIN
    func validateIFAwithEUIN(_ keywords: [String: [String: String]], completion: @escaping (_ result: ValidateIFAwithEUINModel?, _ error: Error?) -> Void) {
        _ = API.request(.loginValidateIFAwithEUIN(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let validateIFAwithEUINResponse = ValidateIFAwithEUINModel.mappedValidateIFAwithEUINModel(JSON)
                    completion(validateIFAwithEUINResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    // register IFA with EUIN
    func registerIFAwithEUIN(_ keywords: [String: [String: String]], completion: @escaping (_ result: RegisterIFAwithEUINModel?, _ error: Error?) -> Void) {
        _ = API.request(.loginRegisterIFAwithEUIN(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let registerIFAwithEUINResponse = RegisterIFAwithEUINModel.mappedRegisterIFAwithEUINModel(JSON)
                    completion(registerIFAwithEUINResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    // authenticate IFA with EUIN
    func authenticateIFAwithEUIN(_ keywords: [String: [String: String]], completion: @escaping (_ result: AuthenticateIFAwithEUINModel?, _ error: Error?) -> Void) {
        _ = API.request(.loginAuthenticateIFAwithEUIN(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let authenticateIFAwithEUINResponse = AuthenticateIFAwithEUINModel.mappedAuthenticateIFAwithEUINModel(JSON)
                    completion(authenticateIFAwithEUINResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    // update IFA with EUIN password
    func updateIFAwithEUINPassword(_ keywords: [String: [String: String]], completion: @escaping (_ result: UpdateIFAwithEUINPasswordModel?, _ error: Error?) -> Void) {
        _ = API.request(.loginUpdateIFAwithEUINPassword(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let updateIFAwithEUINPasswordModelResponse = UpdateIFAwithEUINPasswordModel.mappedUpdateIFAwithEUINPasswordModel(JSON)
                    completion(updateIFAwithEUINPasswordModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    // Generate AuthCode
    func generateAuthCode(_ keywords: [String: [String: String]], completion: @escaping (_ result: GenerateAuthCodeModel?, _ error: Error?) -> Void) {
        _ = API.request(.loginGenerateAuthCode(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let generateAuthCodeResponse = GenerateAuthCodeModel.mappedGenerateAuthCodeModel(JSON)
                    completion(generateAuthCodeResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func investorListOfIFA(_ keywords: [String: AnyObject], completion: @escaping (_ result: InvestorListOfIFAModel?, _ error: Error?) -> Void) {
        _ = API.request(.investorListOfIFA(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let investorListOfIFAResponse = InvestorListOfIFAModel.mappedInvestorListOfIFAModel(JSON)
                    completion(investorListOfIFAResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func createGroup(_ keywords: [String: AnyObject], completion: @escaping (_ result: CreateGroupModel?, _ error: Error?) -> Void) {
        _ = API.request(.createGroup(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let createGroupModelResponse = CreateGroupModel.mappedCreateGroupModel(JSON)
                    completion(createGroupModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func getInvestorMappedToGroup(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetInvestorMappedToGroupModel?, _ error: Error?) -> Void) {
        _ = API.request(.getInvestorMappedToGroup(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let getInvestorMappedToGroupModelResponse = GetInvestorMappedToGroupModel.mappedGetInvestorMappedToGroupModel(JSON)
                    completion(getInvestorMappedToGroupModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func getInvestorListOfCustomer(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetInvestorListOfCustomer?, _ error: Error?) -> Void) {
        _ = API.request(.getInvestorListOfCustomer(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let getInvestorListOfCustomer = GetInvestorListOfCustomer.mappedGetInvestorListOfCustomer(JSON)
                    completion(getInvestorListOfCustomer, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func saveReminderDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: SaveReminderDetailsModel?, _ error: Error?) -> Void) {
        _ = API.request(.saveReminderDetails(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let saveReminderDetailsModelResponse = SaveReminderDetailsModel.mappedSaveReminderDetailsModel(JSON)
                    completion(saveReminderDetailsModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func getGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetGoalsDetailsModel?, _ error: Error?) -> Void) {
        _ = API.request(.getGoalsDetails(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let getGoalsDetailsModelResponse = GetGoalsDetailsModel.mappedGetGoalsDetailsModel(JSON)
                    completion(getGoalsDetailsModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func updateGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: UpdateGoalDetailsModel?, _ error: Error?) -> Void) {
        _ = API.request(.updateGoalsDetails(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let updateGoalDetailsModelResponse = UpdateGoalDetailsModel.mappedUpdateGoalDetailsModel(JSON)
                    completion(updateGoalDetailsModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func saveGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: SaveGoalDetailsModel?, _ error: Error?) -> Void) {
        _ = API.request(.saveGoalDetails(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let saveGoalDetailsModelResponse = SaveGoalDetailsModel.mappedSaveGoalDetailsModel(JSON)
                    completion(saveGoalDetailsModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func deleteGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: DeleteGoalDetailsModel?, _ error: Error?) -> Void) {
        _ = API.request(.deleteGoalDetails(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let deleteGoalDetailsModelResponse = DeleteGoalDetailsModel.mappedDeleteGoalDetailsModel(JSON)
                    completion(deleteGoalDetailsModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func saveAdvisorRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: SaveAdvisorRequestModel?, _ error: Error?) -> Void) {
        _ = API.request(.saveAdvisorRequest(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let saveAdvisorRequestResponse = SaveAdvisorRequestModel.mappedSaveAdvisorRequestModel(JSON)
                    completion(saveAdvisorRequestResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func salesReportRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: SalesReportOfIFAModel?, _ error: Error?) -> Void) {
        _ = API.request(.salesReportRequest(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let salesReportOfIFAModelResponse = SalesReportOfIFAModel.mappedSalesReportOfIFAModel(JSON)
                    completion(salesReportOfIFAModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func investmentReportRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: InvestmentReportModel?, _ error: Error?) -> Void) {
        _ = API.request(.investmentReportRequest(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let investmentReportModelResponse = InvestmentReportModel.mappedInvestmentReportModel(JSON)
                    completion(investmentReportModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }
    
    func sipBookReportRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: SIPBookModel?, _ error: Error?) -> Void) {
        _ = API.request(.sipBookReportRequest(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let investmentReportModelResponse = SIPBookModel.mappedIFAChartTrendModel(JSON)
                    completion(investmentReportModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }
    

    func investorReportRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: InvestorReportModel?, _ error: Error?) -> Void) {
        _ = API.request(.investorReportRequest(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let investorReportModelResponse = InvestorReportModel.mappedInvestorReportModel(JSON)
                    completion(investorReportModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func getTransactionDetailsOfIFARequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetTransactionDetailsOfIFAModel?, _ error: Error?) -> Void) {
        _ = API.request(.getTransactionDetailsOfIFA(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let getTransactionResponse = GetTransactionDetailsOfIFAModel.mappedGetTransactionDetailsOfIFAModel(JSON)
                    completion(getTransactionResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func deleteNoteAndReminder(_ keywords: [String: AnyObject], completion: @escaping (BaseNetworkingModel?, Error?) -> Void) {
        _ = API.request(.deleteNoteAndReminder(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let baseNetworkingModelResponse = BaseNetworkingModel.mappedBaseNetworkingModel(JSON)
                    completion(baseNetworkingModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func logoutIFAModelRequest(_ keywords: [String: AnyObject], completion: @escaping (LogoutIFAModel?, Error?) -> Void) {
        _ = API.request(.logoutIFA(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let logoutIFAResponse = LogoutIFAModel.mappedLogoutIFAModel(JSON)
                    completion(logoutIFAResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func updateReminderDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: UpdateReminderDetailsModel?, _ error: Error?) -> Void) {
        _ = API.request(.updateReminderDetails(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let updateReminderResponse = UpdateReminderDetailsModel.mappedUpdateReminderDetailsModel(JSON)
                    completion(updateReminderResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }
    
    func ifaChartTrendDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: IFAChartTrendModel?, _ error: Error?) -> Void) {
        _ = API.request(.ifaChartTrendRequest(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let updateReminderResponse = IFAChartTrendModel.mappedIFAChartTrendModel(JSON)
                    completion(updateReminderResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }
    
    func ifaAUMBreakupRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: IFAAUMBreakupModel?, _ error: Error?) -> Void) {
        _ = API.request(.ifaAUMBreakupRequest(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let ifaAUMBreakupResponse = IFAAUMBreakupModel.mappedIFAAUMBreakupModel(JSON)
                    completion(ifaAUMBreakupResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

}
