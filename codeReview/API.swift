//
//  API.swift
//  fingo-partner
//
//  Created by Shahbaz on 29/06/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import Firebase
import FirebaseDatabase

open class API {

    static var checksum: String = ""
    static var timestamp: String = ""

    public enum Endpoints {

        // MARK: LOGIN End points
        case loginValidateIFA([String: [String: String]])
        case loginValidateIFAwithEUIN([String: [String: String]])
        case loginGenerateOTP([String: [String: String]])
        case loginValidateOTP([String: [String: String]])
        case loginRegisterIFAwithEUIN([String: [String: String]])
        case loginAuthenticateIFAwithEUIN([String: [String: String]])
        case loginUpdateIFAwithEUINPassword([String: [String: String]])
        case loginGenerateAuthCode([String: [String: String]])
        case logoutIFA([String: AnyObject])

        // MARK: FOLIO CREATION End points
        case captureLeadDetails([String: AnyObject])
        case ifscBankDetails([String: AnyObject])
        case listOfBanks([String: AnyObject])
        case listOfCities([String: AnyObject])
        case listOfBranches([String: AnyObject])
        case checkKYCStatus([String: AnyObject])
        case newFolioCreation([String: AnyObject])
        case deleteLeadDetails([String: AnyObject])
        case validatePANCard([String: AnyObject])

        // Adhar Card
        case ValidateAadharNo([String: AnyObject])
        case ValidateAadharOTP([String: AnyObject])

        // Product Detials
        case productList([String: AnyObject])
        case getNotesAndReminder([String: AnyObject])
        case getInvestorListOfCustomer([String: AnyObject])
        case favoriteScheme([String: AnyObject])
        case getSchemeHistoricalReturn([String: AnyObject])
        case getNavOnDateRange([String: AnyObject])
        case getSchemeHolding([String: AnyObject])
        case getProductReturns([String: AnyObject])
        case getProductDocument([String:AnyObject])
        case getProductTrailingReturns([String: AnyObject])

        // Investor List
        case investorListOfIFA([String: AnyObject])
        case createGroup([String: AnyObject])
        case getInvestorMappedToGroup([String: AnyObject])
        case saveNotesMasterList([String: AnyObject])
        case updateNotesMasterList([String: AnyObject])
        case deleteNotesMasterList([String: AnyObject])
        case saveReminderDetails([String: AnyObject])
        case getGoalsDetails([String: AnyObject])
        case updateGoalsDetails([String: AnyObject])
        case saveGoalDetails([String: AnyObject])
        case getSIPGoalDetails([String: AnyObject])
        case customerAssetAllocation([String: AnyObject])
        case deleteGoalDetails([String: AnyObject])
        case getAccountStatementByFolio([String: AnyObject])
        case deleteNoteAndReminder([String: AnyObject])
        case updateReminderDetails([String: AnyObject])
        case validateFATCA([String: AnyObject])
        case accountStatement([String: AnyObject])
        case otmBankDetails([String: AnyObject])
        case registerOTMRequest([String: AnyObject])
        case updateFATCA([String: AnyObject])

        // Transaction
        case saveAdvisorRequest([String: AnyObject])
        case saveSTPAdvisorRequest([String: AnyObject])
        case saveSWPAdvisorRequest([String: AnyObject])
        case getSchemeMasterDetails([String: AnyObject])
        case saveSwitchAdvisorRequest([String: AnyObject])
        case getIRDetailsForFolio([String: AnyObject])
        case saveRedeemAdvisorRequest([String: AnyObject])

        // Dashboard
        case salesReportRequest([String: AnyObject])
        case investorReportRequest([String: AnyObject])
        case investmentReportRequest([String: AnyObject])
        case sipBookReportRequest([String: AnyObject])
        case getTransactionDetailsOfIFA([String: AnyObject])
        case getFocusedFundsRequest([String: AnyObject])
        case ifaChartTrendRequest([String: AnyObject])
        case ifaAUMBreakupRequest([String: AnyObject])
        
        //Sales Tool
        case retirementCalculatorRequest([String: AnyObject])
        case sipCalculatorRequest([String: AnyObject])
        case finGoalPlanRequest([String: AnyObject])
        case salesToolGoalsRequest([String: AnyObject])
        // Privilege Club
        case privilegeClubDashboardDetails(headers: [String: String], arnCode: String)
        case privilegeClubStaticContent(headers: [String: String], arnCode: String, contentType: String?)
        case privilegeClubPeopleSpeakDetails(headers: [String: String], arnCode: String)
        case privilegeClubMagazineDetails(headers: [String: String], arnCode: String)
        case privilegeClubGalleryDetails(headers: [String: String], arnCode: String)
        case privilegeClubScholarshipDetails(headers: [String: String], arnCode: String)
        case privilegeClubVisitingCardDetails(headers: [String: String], arnCode: String)
        case privilegeClubLifeInsuranceDetails(headers: [String: String], arnCode: String)
        case privilegeClubMedicalInsuranceDetails(headers: [String: String], arnCode: String)
        case privilegeClubGAPDetails(headers: [String: String], arnCode: String)
        
        public var method: HTTPMethod {
            switch self {
            default :
                return HTTPMethod.post
            }
        }

        public var path: String {
            switch self {
            case .loginValidateIFA :
                return NetworkConstants.brokerBaseURL + APIUrls.validateIFA.rawValue
            case .loginValidateIFAwithEUIN:
                return NetworkConstants.brokerBaseURL + APIUrls.validateIFAwithEUIN.rawValue
            case .loginGenerateOTP:
                return NetworkConstants.commonBaseURL + APIUrls.generateOTP.rawValue
            case .loginValidateOTP:
                return NetworkConstants.commonBaseURL + APIUrls.validateOTP.rawValue
            case .loginRegisterIFAwithEUIN:
                return NetworkConstants.brokerBaseURL + APIUrls.registerIFAwithEUIN.rawValue
            case .loginAuthenticateIFAwithEUIN:
                return NetworkConstants.brokerBaseURL + APIUrls.authenticateIFAwithEUIN.rawValue
            case .loginUpdateIFAwithEUINPassword:
                return NetworkConstants.brokerBaseURL + APIUrls.updateIFAwithEUINPassword.rawValue
            case .loginGenerateAuthCode:
                return NetworkConstants.brokerBaseURL + APIUrls.generateAuthCode.rawValue
            case .captureLeadDetails:
                return NetworkConstants.leadRegistrationURL + APIUrls.captureLDetails.rawValue
            case .ifscBankDetails:
                return NetworkConstants.commonBaseURL + APIUrls.ifscPurchaseBankDetails.rawValue
            case .listOfBanks:
                return NetworkConstants.commonBaseURL + APIUrls.purchaseListOfBanks.rawValue
            case .listOfCities:
                return NetworkConstants.commonBaseURL + APIUrls.purchaseListOfCities.rawValue
            case .listOfBranches:
                return NetworkConstants.commonBaseURL + APIUrls.purchaseListOfBranches.rawValue
            case .checkKYCStatus:
                return NetworkConstants.leadRegistrationURL + APIUrls.checkKYCStatus.rawValue
            case .productList:
                return NetworkConstants.productDetailsBaseURL + "/GetProductDetails"
            case .ValidateAadharNo:
                return NetworkConstants.leadRegistrationURL + APIUrls.ValidateAadharNo.rawValue
            case .ValidateAadharOTP:
                return NetworkConstants.leadRegistrationURL + APIUrls.ValidateAadharOTP.rawValue
            case .newFolioCreation:
                return NetworkConstants.leadRegistrationURL + APIUrls.newFolioCreation.rawValue
            case .investorListOfIFA:
                return NetworkConstants.brokerBaseURL + APIUrls.investorListOfIFA.rawValue
            case .createGroup:
                return NetworkConstants.brokerBaseURL + APIUrls.createGroup.rawValue
            case .getInvestorMappedToGroup:
                return NetworkConstants.brokerBaseURL + APIUrls.getInvestorMappedToGroup.rawValue
            case .getNotesAndReminder:
                return NetworkConstants.brokerBaseURL + "/GetNoteAndReminder"
            case .saveNotesMasterList:
                return NetworkConstants.commonBaseURL + APIUrls.saveNotesMasterList.rawValue
            case .updateNotesMasterList:
                return NetworkConstants.commonBaseURL + APIUrls.updateNotesMasterList.rawValue
            case .deleteNotesMasterList:
                return NetworkConstants.commonBaseURL + APIUrls.deleteNotesMasterList.rawValue
            case .saveReminderDetails:
                return NetworkConstants.brokerBaseURL + APIUrls.saveReminderDetails.rawValue
            case .getInvestorListOfCustomer:
                return NetworkConstants.brokerBaseURL + APIUrls.getInvestorListOfCustomer.rawValue
            case .getGoalsDetails:
                return NetworkConstants.brokerBaseURL + "/GetGoalDetails"
            case .customerAssetAllocation:
                return NetworkConstants.brokerBaseURL + APIUrls.customerAssetAllocation.rawValue
            case .updateGoalsDetails:
                return NetworkConstants.brokerBaseURL + "/UpdateGoalDetails"
            case .saveGoalDetails:
                return NetworkConstants.brokerBaseURL + "/SaveGoalDetails"
            case .getSIPGoalDetails:
                return NetworkConstants.sipServiceURL + "/GetSIPGoalDetails"
            case .deleteGoalDetails:
                return NetworkConstants.brokerBaseURL + "/DeleteGoalDetails"
            case .favoriteScheme:
                return NetworkConstants.productDetailsBaseURL + "/FavouriteScheme"
            case .saveAdvisorRequest:
                return NetworkConstants.brokerBaseURL + "/SaveAdvisorRequest"
            case .getSchemeHistoricalReturn:
                return NetworkConstants.productDetailsBaseURL + "/GetSchemeHistoricalReturn"
            case .getNavOnDateRange:
                return NetworkConstants.commonBaseURL + "/GetNAVonDateRange"
            case .salesReportRequest:
                return NetworkConstants.brokerBaseURL + "/SalesReportOfIFA"
            case .investorReportRequest:
                return NetworkConstants.brokerBaseURL + "/InvestorReport"
            case .investmentReportRequest:
                return NetworkConstants.brokerBaseURL + "/InvestmentReport"
            case .getTransactionDetailsOfIFA:
                return NetworkConstants.brokerBaseURL + "/GetTransactionDetailsOfIFA"
            case .getSchemeHolding:
                return NetworkConstants.productDetailsBaseURL + "/GetSchemeHolding"
            case .getProductDocument:
                return NetworkConstants.productDetailsBaseURL + "/ProductDocuments"
            case .getAccountStatementByFolio:
                return NetworkConstants.commonBaseURL + "/GetAccountStatementByFolio"
            case .logoutIFA:
                return NetworkConstants.brokerBaseURL + "/LogoutIFAUser"
            case .deleteNoteAndReminder:
                return NetworkConstants.brokerBaseURL + "/DeleteNoteAndReminder"
            case .deleteLeadDetails:
                return NetworkConstants.leadRegistrationURL + "/DeleteLeadDetails"
            case .validatePANCard:
                return NetworkConstants.leadRegistrationURL + "/ValidatePAN"
            case .getFocusedFundsRequest:
                return NetworkConstants.productDetailsBaseURL + "/GetFocusedFundSchemes"
            case .saveSTPAdvisorRequest:
                return NetworkConstants.stpSWPServiceURL + "/SaveSTPAdvisorTran"
            case .saveSWPAdvisorRequest:
                return NetworkConstants.stpSWPServiceURL + "/SaveSWPAdvisorTran"
            case .getSchemeMasterDetails:
                return NetworkConstants.commonBaseURL + "/GetSchemeMasterDetails"
            case .updateReminderDetails:
                return NetworkConstants.brokerBaseURL + "/UpdateReminderDetails"
            case .getProductReturns:
                return "https://sipnow.birlasunlife.com/SN_API_Live/SN_APIService.svc/ExpectedReturn"
            case .saveSwitchAdvisorRequest:
                return NetworkConstants.switchServiceURL + "/SaveAdvSwitchAdvice"
            case .getIRDetailsForFolio:
                return NetworkConstants.redeemServiceURL + "/GetIRDetailsForFolio"
            case .getProductTrailingReturns:
                return NetworkConstants.productDetailsBaseURL + "/GetSchemeTrailingReturn"
            case .retirementCalculatorRequest:
                return "https://sipnow.birlasunlife.com/SN_API_Live/SN_APIService.svc/RetireCal"
            case .sipCalculatorRequest:
                return "https://sipnow.birlasunlife.com/SN_API_Live/SN_APIService.svc/SIPCal"
            case .finGoalPlanRequest:
                return "https://sipnow.birlasunlife.com/SN_API_Live/SN_APIService.svc/FinGoalPlan"
            case .sipBookReportRequest:
                return NetworkConstants.brokerBaseURL + "/SIPBookReport"
            case .salesToolGoalsRequest:
                return "https://sipnow.birlasunlife.com/SN_API_Live/SN_APIService.svc/GoalMaster"
            case let .privilegeClubDashboardDetails(_, arnCode):
                return NetworkHelper.getPrivilegeClubDashboardDetailsUrl(arnCode: arnCode)
            case let .privilegeClubStaticContent(_, arnCode, contentType):
                return NetworkHelper.getPrivilegeClubStaticDetailsUrl(arnCode: arnCode, contentType: contentType)
            case let .privilegeClubPeopleSpeakDetails(_, arnCode):
                return NetworkHelper.getPrivilegeClubSpeakPeopleDetailsUrl(arnCode: arnCode)
            case let .privilegeClubMagazineDetails(_, arnCode):
                return NetworkHelper.getPrivilegeClubMagazineDetailsUrl(arnCode: arnCode)
            case let .privilegeClubGalleryDetails(_, arnCode):
                return NetworkHelper.getPrivilegeClubGalleryDetailsUrl(arnCode: arnCode)
            case let .privilegeClubScholarshipDetails(_, arnCode):
                return NetworkHelper.getPrivilegeClubScholarshipDetailsUrl(arnCode: arnCode)
            case let .privilegeClubVisitingCardDetails(_, arnCode):
                return NetworkHelper.getPrivilegeClubVisitingCardUrl(arnCode: arnCode)
            case let .privilegeClubLifeInsuranceDetails(_, arnCode):
                return NetworkHelper.getPrivilegeClubLifeInsuranceUrl(arnCode: arnCode)
            case let .privilegeClubMedicalInsuranceDetails(_, arnCode):
                return NetworkHelper.getPrivilegeClubMedicalInsuranceUrl(arnCode: arnCode)
            case let .privilegeClubGAPDetails(_, arnCode):
                return NetworkHelper.getPrivilegeClubGAPUrl(arnCode: arnCode)
            case .saveRedeemAdvisorRequest:
                return NetworkConstants.redeemServiceURL + "/SaveAdvRedeemAdvice"
            case .otmBankDetails:
                return NetworkConstants.commonBaseURL + "/GetOTMBanks"
            case .validateFATCA:
                return NetworkConstants.leadRegistrationURL + "/ValidateFATCA"
//                return "https://demo6116897.mockable.io/validateFatca"
            case .accountStatement:
                return NetworkConstants.commonBaseURL + "/GetAccountStatement"
            case .registerOTMRequest:
                return NetworkConstants.commonBaseURL + "/SaveOTMRegistrationDetails"
            case .updateFATCA:
                return NetworkConstants.leadRegistrationURL + "/UpdateFatca"
            case .ifaChartTrendRequest:
                return NetworkConstants.brokerBaseURL + "/IFAChartTrend"
            case .ifaAUMBreakupRequest:
                return NetworkConstants.brokerBaseURL + "/IFAAumBreakup"
            }
        }

        public var parameters: [String: AnyObject]? {

            var parameters = [String: AnyObject]()
            switch self {
            case let .loginValidateIFA(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .loginValidateIFAwithEUIN(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .loginGenerateOTP(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .loginValidateOTP(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .loginRegisterIFAwithEUIN(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .loginAuthenticateIFAwithEUIN(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .loginUpdateIFAwithEUINPassword(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .loginGenerateAuthCode(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .captureLeadDetails(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .ifscBankDetails(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .listOfBanks(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .listOfCities(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .listOfBranches(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .ValidateAadharNo(keywords):
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .ValidateAadharOTP(keywords):
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .checkKYCStatus(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .newFolioCreation(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .investorListOfIFA(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .createGroup(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .getInvestorMappedToGroup(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .getNotesAndReminder(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .saveNotesMasterList(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .updateNotesMasterList(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .deleteNotesMasterList(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .saveReminderDetails(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .ifaChartTrendRequest(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case let .saveRedeemAdvisorRequest(keywords) :
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            case .getInvestorListOfCustomer(let keywords), .getGoalsDetails(let keywords),.customerAssetAllocation(let keywords),.productList(let keywords), .updateGoalsDetails(let keywords), .saveGoalDetails(let keywords), .getSIPGoalDetails(let keywords), .deleteGoalDetails(let keywords), .favoriteScheme(let keywords), .saveAdvisorRequest(let keywords), .getSchemeHistoricalReturn(let keywords), .salesReportRequest(let keywords), .investmentReportRequest(let keywords), .investorReportRequest(let keywords), .getTransactionDetailsOfIFA(let keywords), .getSchemeHolding(let keywords), .getAccountStatementByFolio(let keywords) , .logoutIFA(let keywords), .deleteNoteAndReminder(let keywords), .deleteLeadDetails(let keywords), .validatePANCard(let keywords), .getFocusedFundsRequest(let keywords), .saveSTPAdvisorRequest(let keywords), .saveSWPAdvisorRequest(let keywords), .getSchemeMasterDetails(let keywords), .updateReminderDetails(let keywords), .getProductReturns(let keywords), .saveSwitchAdvisorRequest(let keywords), .getIRDetailsForFolio(let keywords), .getProductTrailingReturns(let keywords),.getNavOnDateRange(let keywords), .retirementCalculatorRequest(let keywords), .sipCalculatorRequest(let keywords), .finGoalPlanRequest(let keywords), .otmBankDetails(let keywords),.getProductDocument(let keywords), .validateFATCA(let keywords), .accountStatement(let keywords), .salesToolGoalsRequest(let keywords), .registerOTMRequest(let keywords), .updateFATCA(let keywords), .sipBookReportRequest(let keywords), .ifaAUMBreakupRequest(let keywords):
                for (key, value) in keywords {
                    parameters[key] = value as AnyObject
                }
            default:
                break
            }
            return parameters
        }

        public var headers: [String: String]? {

            var headers = [String: String]()
            switch self {
            case let .privilegeClubStaticContent(params, _, _), let .privilegeClubDashboardDetails(params, _), let .privilegeClubPeopleSpeakDetails(params, _),
                 let .privilegeClubMagazineDetails(params, _), let .privilegeClubGalleryDetails(params, _), let .privilegeClubScholarshipDetails(params, _), let .privilegeClubVisitingCardDetails(params, _), let .privilegeClubLifeInsuranceDetails(params, _), let .privilegeClubMedicalInsuranceDetails(params, _), let .privilegeClubGAPDetails(params, _):
                headers = params
            default:
                headers[NetworkConstants.header.contentType] = NetworkConstants.headerValues.contentType
                headers["Checksum"] = API.checksum
                headers["DateTimeStamp"] = API.timestamp
            }
            return headers
        }
    }

    open static func request(_ endpoint: API.Endpoints, completionHandler: @escaping (DataResponse<Any>) -> Void) -> Request {

        let ref = Database.database().reference()
        if !EnvConfig.isDebug {
            let requestObject = FirebaseJSONModel(url: endpoint.path, dateTimeStamp: API.timestamp, logType: FirebaseLogType.request.rawValue, body: endpoint.parameters)
            
            ref.child("fingo-ios").child(UserDefaultServices.getARNValue() + " " + UserDefaultServices.getEUINValue()).childByAutoId().setValue(requestObject.getDictionary())
        }
        
        let request = Alamofire.SessionManager.default.request(endpoint.path, method: endpoint.method, parameters: endpoint.parameters, encoding: JSONEncoding.default, headers: endpoint.headers).responseJSON { response in
            
            if (response.result.error) != nil {
                if !EnvConfig.isDebug {
                    LogPrint("Firebase noted")
                    let responseObject = FirebaseJSONModel(url: endpoint.path, dateTimeStamp: API.timestamp, logType: FirebaseLogType.response.rawValue, body: response.result.value as? [String: AnyObject])
                    ref.child("fingo-ios").child(UserDefaultServices.getARNValue() + " " + UserDefaultServices.getEUINValue()).childByAutoId().setValue(responseObject.getDictionary())
                }
                completionHandler(response)
            } else {
                if let result = response.result.value as? [String: AnyObject] {
                    LogPrint("---> RETURN CODE <---")
                    let returnCode = result[NetworkConstants.keys.returnCode] as? String
                    LogPrint(returnCode ?? "")

                    if (returnCode ?? "") == "AUTH00" {
                        LogPrint("---> AUTHENTICATION FAILURE <---")
                        UIView.animate(withDuration: 0.0, animations: {}, completion: { (value) in
                            NotificationCenter.default.post(name: NSNotification.Name("authCodeFailureNotif"), object: nil)
                        })
                    } else {
                        completionHandler(response)
                    }
                }
            }
        }
        return request
    }

    open static func requestString(_ endpoint: API.Endpoints, completionHandler: @escaping (DataResponse<String>) -> Void) -> Request {

        let ref = Database.database().reference()
        if !EnvConfig.isDebug {
            let requestObject = FirebaseJSONModel(url: endpoint.path, dateTimeStamp: API.timestamp, logType: FirebaseLogType.request.rawValue, body: endpoint.parameters)
            
            ref.child("fingo-ios").child(UserDefaultServices.getARNValue() + " " + UserDefaultServices.getEUINValue()).childByAutoId().setValue(requestObject.getDictionary())
        }
        
        let request = Alamofire.SessionManager.default.request(endpoint.path, method: endpoint.method, parameters: endpoint.parameters, encoding: JSONEncoding.default, headers: nil).responseString { response in
            
            if response.error != nil {
                if !EnvConfig.isDebug {
                    LogPrint("Firebase noted")
                    let responseObject = FirebaseJSONModel(url: endpoint.path, dateTimeStamp: API.timestamp, logType: FirebaseLogType.response.rawValue, body: ["response": response.result.value as AnyObject])
                    ref.child("fingo-ios").child(UserDefaultServices.getARNValue() + " " + UserDefaultServices.getEUINValue()).childByAutoId().setValue(responseObject.getDictionary())
                }
                completionHandler(response)
            } else {

                if let firstIndex = response.result.value?.characters.index(of: "{") {
                    if let tempIndex = response.result.value?.range(of: "}", options: String.CompareOptions.backwards, range: nil, locale: nil)?.lowerBound, let lastIndex = response.result.value?.index(tempIndex, offsetBy: 1) {

                        var json = response.result.value?.substring(with: Range(firstIndex ..< lastIndex))
                        json = json?.replacingOccurrences(of: "\0", with: "")
                        json = json?.replacingOccurrences(of: "\\", with: "")
                        json = json?.replacingOccurrences(of: "\n", with: "")

                        guard let string = json, let data: BaseNetworkingModel = Mapper<BaseNetworkingModel>().map(JSONString: string) else {
                            completionHandler(response)
                            return
                        }

                        let returnCode = data.returnCode
                        LogPrint(returnCode ?? "")

                        if (returnCode ?? "") == "AUTH00" {
                            LogPrint("---> AUTHENTICATION FAILURE <---")
                            NotificationCenter.default.post(name: NSNotification.Name("authCodeFailureNotif"), object: nil)
                        } else {
                            completionHandler(response)
                        }
                    }
                }
            }
        }
        return request
    }
}
