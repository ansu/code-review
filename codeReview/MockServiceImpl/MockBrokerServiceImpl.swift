//
//  MockBrokerServiceImpl.swift
//  fingo-partner
//
//  Created by Kuliza-282 on 12/03/18.
//  Copyright © 2018 Kuliza-282. All rights reserved.
//

import Foundation


class MockBrokerServiceImpl: BrokerBaseServiceProtocol {
    
    
     func validateIFA(_ keywords: [String: [String: String]], completion: @escaping (_ result: ValidateIFAModel?, _ error: Error?) -> Void) {
       
        let str = "{\"EUINInfo\": [{\"EUIN\": \"E040932\",\"EUIN_Email\": \"rakesh1945s@gmail.com\",\"EUIN_Mobile\": \"+919415368440\",\"EmployeeName\": \"Rakesh Kumar Arora\",\"ValidFrom\": \"10-DEC-2015\",\"ValidTo\": \"27-NOV-2018\"}],\"Email\": \"rakesh1945s@gmail.com\",\"Expiry_Date\": \"27-NOV-2018\",\"IFACode\": \"ARN-19095\",\"IFAName\": \"RAKESH KUMAR ARORA\",\"IsOldRegistration\": \"N\",\"IsRegistered\": \"N\",\"Mobile\": \"+919415368440\",\"ReturnCode\": \"1\",\"ReturnMsg\": \"Record return successfully.\",\"UDP\": \"<null>\"}"
        let data1 = str.data(using: String.Encoding.utf8, allowLossyConversion: false)!
        
        do {
            let json = try JSONSerialization.jsonObject(with: data1, options: []) as! [String: AnyObject]
            let validateIFAResponse = ValidateIFAModel.mappedValidateIFAModel(json)
            completion(validateIFAResponse, nil)
            
        } catch let _ as NSError {
            completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
        }
    }
    
    
    func updateIFAwithEUINPassword(_ keywords: [String: [String: String]], completion: @escaping (_ result: UpdateIFAwithEUINPasswordModel?, _ error: Error?) -> Void) {
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    
    func authenticateIFAwithEUIN(_ keywords: [String: [String: String]], completion: @escaping (_ result: AuthenticateIFAwithEUINModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    func registerIFAwithEUIN(_ keywords: [String: [String: String]], completion: @escaping (_ result: RegisterIFAwithEUINModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    func validateIFAwithEUIN(_ keywords: [String: [String: String]], completion: @escaping (_ result: ValidateIFAwithEUINModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    func generateAuthCode(_ keywords: [String: [String: String]], completion: @escaping (_ result: GenerateAuthCodeModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func investorListOfIFA(_ keywords: [String: AnyObject], completion: @escaping (_ result: InvestorListOfIFAModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func createGroup(_ keywords: [String: AnyObject], completion: @escaping (_ result: CreateGroupModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func getInvestorMappedToGroup(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetInvestorMappedToGroupModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func saveReminderDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: SaveReminderDetailsModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    func updateReminderDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: UpdateReminderDetailsModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func getInvestorListOfCustomer(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetInvestorListOfCustomer?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func getGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetGoalsDetailsModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func updateGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: UpdateGoalDetailsModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func saveGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: SaveGoalDetailsModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    func deleteGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: DeleteGoalDetailsModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func saveAdvisorRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: SaveAdvisorRequestModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    // MARK: Dashboard
    func salesReportRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: SalesReportOfIFAModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func investmentReportRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: InvestmentReportModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func sipBookReportRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: SIPBookModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func investorReportRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: InvestorReportModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func deleteNoteAndReminder(_ keywords: [String: AnyObject], completion: @escaping (_ result: BaseNetworkingModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func getTransactionDetailsOfIFARequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetTransactionDetailsOfIFAModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func logoutIFAModelRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: LogoutIFAModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func ifaChartTrendDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: IFAChartTrendModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
    
    func ifaAUMBreakupRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: IFAAUMBreakupModel?, _ error: Error?) -> Void){
        completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
    }
}
