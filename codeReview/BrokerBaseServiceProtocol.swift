//
//  BrokerBaseProtocol.swift
//  fingo-partner
//
//  Created by Kuliza-282 on 11/07/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

protocol BrokerBaseServiceProtocol {
    func updateIFAwithEUINPassword(_ keywords: [String: [String: String]], completion: @escaping (_ result: UpdateIFAwithEUINPasswordModel?, _ error: Error?) -> Void)
    func authenticateIFAwithEUIN(_ keywords: [String: [String: String]], completion: @escaping (_ result: AuthenticateIFAwithEUINModel?, _ error: Error?) -> Void)
    func registerIFAwithEUIN(_ keywords: [String: [String: String]], completion: @escaping (_ result: RegisterIFAwithEUINModel?, _ error: Error?) -> Void)
    func validateIFA(_ keywords: [String: [String: String]], completion: @escaping (_ result: ValidateIFAModel?, _ error: Error?) -> Void)
    func validateIFAwithEUIN(_ keywords: [String: [String: String]], completion: @escaping (_ result: ValidateIFAwithEUINModel?, _ error: Error?) -> Void)
    func generateAuthCode(_ keywords: [String: [String: String]], completion: @escaping (_ result: GenerateAuthCodeModel?, _ error: Error?) -> Void)

    func investorListOfIFA(_ keywords: [String: AnyObject], completion: @escaping (_ result: InvestorListOfIFAModel?, _ error: Error?) -> Void)

    func createGroup(_ keywords: [String: AnyObject], completion: @escaping (_ result: CreateGroupModel?, _ error: Error?) -> Void)

    func getInvestorMappedToGroup(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetInvestorMappedToGroupModel?, _ error: Error?) -> Void)

    func saveReminderDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: SaveReminderDetailsModel?, _ error: Error?) -> Void)
    func updateReminderDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: UpdateReminderDetailsModel?, _ error: Error?) -> Void)

    func getInvestorListOfCustomer(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetInvestorListOfCustomer?, _ error: Error?) -> Void)

    func getGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetGoalsDetailsModel?, _ error: Error?) -> Void)

    func updateGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: UpdateGoalDetailsModel?, _ error: Error?) -> Void)

    func saveGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: SaveGoalDetailsModel?, _ error: Error?) -> Void)
    func deleteGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: DeleteGoalDetailsModel?, _ error: Error?) -> Void)

    func saveAdvisorRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: SaveAdvisorRequestModel?, _ error: Error?) -> Void)

    // MARK: Dashboard
    func salesReportRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: SalesReportOfIFAModel?, _ error: Error?) -> Void)

    func investmentReportRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: InvestmentReportModel?, _ error: Error?) -> Void)
    
    func sipBookReportRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: SIPBookModel?, _ error: Error?) -> Void)

    func investorReportRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: InvestorReportModel?, _ error: Error?) -> Void)

    func deleteNoteAndReminder(_ keywords: [String: AnyObject], completion: @escaping (_ result: BaseNetworkingModel?, _ error: Error?) -> Void)

    func getTransactionDetailsOfIFARequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetTransactionDetailsOfIFAModel?, _ error: Error?) -> Void)

    func logoutIFAModelRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: LogoutIFAModel?, _ error: Error?) -> Void)
    
    func ifaChartTrendDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: IFAChartTrendModel?, _ error: Error?) -> Void)
    
    func ifaAUMBreakupRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: IFAAUMBreakupModel?, _ error: Error?) -> Void)
}
