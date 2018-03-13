//
//  ProductDetailServiceProtocol.swift
//  fingo-partner
//
//  Created by Shahbaz on 18/07/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation

protocol ProductDetailServiceProtocol {
    func getProductList(_ keywords: [String: AnyObject], completion: @escaping (_ result: ProductListModel?, _ error: Error?) -> Void)

    func favoriteScheme(_ keywords: [String: AnyObject], completion: @escaping (_ result: FavoriteSchemeModel?, _ error: Error?) -> Void)

    func getSchemeHistoricalReturn(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetSchemeHistoricalReturnModel?, _ error: Error?) -> Void)

    func getNavDateOnRange(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetNavOnDateRangeModel?, _ error: Error?) -> Void)

    func getSchemeHolding(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetSchemeHolding?, _ error: Error?) -> Void)

    func getFocusedFundSchemes(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetFocusedFundSchemesModel?, _ error: Error?) -> Void)

    func getProductReturnsDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: CalculateReturnsJSONModel?, _ error: Error?) -> Void)
    
    func getRetireMentCalculatorDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: RetirementCalculatorJSONModel?, _ error: Error?) -> Void)

    func getSIPCalculatorDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: SIPCalculatorJSONModel?, _ error: Error?) -> Void)
    
    func getProductDocument(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetProductDocument?, _ error: Error?) -> Void)
    
    func getFinGoalPlanDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: FinGoalPlanJSONModel?, _ error: Error?) -> Void)
    
     func getSalesToolGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: SalesToolGoalJsonModel?, _ error: Error?) -> Void)
    
    func getProductTrailingReturnDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: SchemeTrailingReturnJSONModel?, _ error: Error?) -> Void)
}
