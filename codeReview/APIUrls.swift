//
//  APIUrls.swift
//  fingo-partner
//
//  Created by Kuliza-282 on 23/05/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

enum APIUrls: String {
    case validateIFA = "/ValidateIFA"
    case validateIFAwithEUIN = "/ValidateIFAWithEUIN"
    case generateOTP = "/GenerateOTP"
    case validateOTP = "/ValidateOTP"
    case registerIFAwithEUIN = "/RegisterIFAwithEUIN"
    case authenticateIFAwithEUIN = "/AuthenticateIFAwithEUIN"
    case updateIFAwithEUINPassword = "/UpdateIFAWithEuinPassword"
    case generateAuthCode = "/GenerateAuthCode"
    case captureLDetails = "/CaptureLeadDetails"
    case ifscPurchaseBankDetails = "/GetIfscPurchaseBankDetails"
    case purchaseListOfBanks = "/GetFPurchaseBanks"
    case purchaseListOfCities = "/GetFPurchaseBranchCity"
    case purchaseListOfBranches = "/GetFPurchaseBranch"
    case checkKYCStatus = "/CheckKYCStatus"
    case ValidateAadharNo = "/ValidateAadharNo"
    case ValidateAadharOTP = "/ValidateAadharOTP"
    case newFolioCreation = "/NewFolioCreation"

    case investorListOfIFA = "/InvestorListOfIFA"
    case createGroup = "/CreateGroup"
    case getInvestorMappedToGroup = "/GetInvestorMappedToGroup"
    case getNoteAndReminder = "/GetNoteAndReminder"
    case saveNotesMasterList = "/SaveNotesMasterList"
    case updateNotesMasterList = "/UpdateNotesMasterList"
    case deleteNotesMasterList = "/DeleteNotesMasterList"
    case saveReminderDetails = "/SaveReminderDetails"
    case getInvestorListOfCustomer = "/InvestorListOfCustomer"
    case customerAssetAllocation = "/CustomerAssetAllocation"

    private func baseURL() -> String {
        switch self {
        default:
            return NetworkConstants.brokerBaseURL
        }
    }

    func returnURL() -> String {
        return baseURL() + rawValue
    }
}
