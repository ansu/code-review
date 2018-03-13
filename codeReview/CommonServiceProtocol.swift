//
//  CommonServiceProtocol.swift
//  fingo-partner
//
//  Created by Kuliza-282 on 11/07/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

protocol CommonServiceProtocol {

    func validateOTP(_ keywords: [String: [String: String]], completion: @escaping (_ result: ValidateOTPModel?, _ error: Error?) -> Void)
    func generateOTP(_ keywords: [String: [String: String]], completion: @escaping (_ result: GenerateOTPModel?, _ error: Error?) -> Void)

    // Folio Creation - Bank Details Page
    func getIFSCBankDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: IFSCBankDetailsModel?, _ error: Error?) -> Void)
    func getListOfBanks(_ keywords: [String: AnyObject], completion: @escaping (_ result: ListOfBanksModel?, _ error: Error?) -> Void)
    func getListOfCities(_ keywords: [String: AnyObject], completion: @escaping (_ result: ListOfCitiesModel?, _ error: Error?) -> Void)
    func getListOfBranches(_ keywords: [String: AnyObject], completion: @escaping (_ result: ListOfBranchesModel?, _ error: Error?) -> Void)

    // Invester Details Notes and Reminder
    func getNotesAndReminder(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetNotesAndReminderModel?, _ error: Error?) -> Void)
    func saveNotesMasterList(_ keywords: [String: AnyObject], completion: @escaping (_ result: SaveNotesMasterListModel?, _ error: Error?) -> Void)
    func updateNotesMasterList(_ keywords: [String: AnyObject], completion: @escaping (_ result: UpdateNotesMasterListModel?, _ error: Error?) -> Void)
    func deleteNotesMasterList(_ keywords: [String: AnyObject], completion: @escaping (_ result: DeleteNotesMasterListModel?, _ error: Error?) -> Void)
    func customerAssetAllocation(_ keywords: [String: AnyObject], completion: @escaping (_ result: CustomerAssetAllocation?, _ error: Error?) -> Void)
    func getAccountStatementByFolio(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetAccountStatementByFolio?, _ error: Error?) -> Void)

    func getSchemeMasterDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetSchemeMasterDetailsModel?, _ error: Error?) -> Void)
    
    func getOTMBankDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: OTMBankDetailsJSONModel?, _ error: Error?) -> Void)
    
    func sendAccountStatement(_ keywords: [String: AnyObject], completion: @escaping (_ result: SendAccountStatementJSONModel?, _ error: Error?) -> Void)
    
    func registerOTMRequest(_ keywords: [String: AnyObject], completion: @escaping (_ result: OTMRegistrationJSONModel?, _ error: Error?) -> Void)

}
