//
//  STPSWPServiceProtocol.swift
//  fingo-partner
//
//  Created by Purushottam Chandra on 27/10/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

protocol STPSWPServiceProtocol {
    func saveSTPAdvisorTransaction(_ keywords:[String:AnyObject],completion:@escaping (_ result: SaveSTPAdvisorTranModel?, _ error: Error?) -> Void)
    func saveSWPAdvisorTransaction(_ keywords:[String:AnyObject],completion:@escaping (_ result: SaveSWPAdvisorTranModel?, _ error: Error?) -> Void)
    func saveSwitchAdvisorTransaction(_ keywords:[String:AnyObject],completion:@escaping (_ result: SaveAdvSwitchAdviceModel?, _ error: Error?) -> Void)
    func getIRDetailsForFolio(_ keywords:[String:AnyObject],completion:@escaping (_ result: GetIRDetailsForFolioModel?, _ error: Error?) -> Void)
    func saveRedemptionAdvisorTransaction(_ keywords:[String:AnyObject],completion:@escaping (_ result: SaveAdvRedeemAdviceModel?, _ error: Error?) -> Void)
}
