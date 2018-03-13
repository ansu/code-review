//
//  RegistrationServiceProtocol.swift
//  fingo-partner
//
//  Created by Purushottam Chandra on 13/07/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

protocol RegistrationServiceProtocol {

    func captureLeadDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: CaptureLeadModel?, _ error: Error?) -> Void)

    func checkKYCStatus(_ keywords: [String: AnyObject], completion: @escaping (_ result: CheckKYCStatusModel?, _ error: Error?) -> Void)

    func ValidateAadharCard(_ keywords: [String: AnyObject], completion: @escaping (_ result: ValidateAadharNoModel?, _ error: Error?) -> Void)

    func ValidateAadharOTP(_ keywords: [String: AnyObject], completion: @escaping (_ result: ValidateAdharOTP?, _ error: Error?) -> Void)

    func NewFolioCreation(_ keywords: [String: AnyObject], completion: @escaping (_ result: NewFolioCreationModel?, _ error: Error?) -> Void)

    func deleteLeadDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: DeleteLeadDetailsModel?, _ error: Error?) -> Void)

    func ValidatePANCard(_ keywords: [String: AnyObject], completion: @escaping (_ result: ActiveAccountValidatePANModel?, _ error: Error?) -> Void)
    
    func validateFATCA(_ keywords: [String: AnyObject], completion: @escaping (_ result: ValidateFatcaJSONModel?, _ error: Error?) -> Void)
    
    func updateFATCA(_ keywords: [String: AnyObject], completion: @escaping (_ result: BaseNetworkingModel?, _ error: Error?) -> Void)
}
