//
//  ProductDetailsImpl.swift
//  fingo-partner
//
//  Created by Shahbaz on 18/07/17.
//  Copyright © 2017 Kuliza-282. All rights reserved.
//

import Foundation
import ObjectMapper

class ProductDetailsImpl: ProductDetailServiceProtocol {

    // Get Product List
    func getProductList(_ keywords: [String: AnyObject], completion: @escaping (ProductListModel?, Error?) -> Void) {
        _ = API.request(.productList(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let productListResponse = ProductListModel.mappedProductListModel(JSON)
                    completion(productListResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }
    
    func  getProductDocument(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetProductDocument?, _ error: Error?) -> Void) {
        _ = API.request(.getProductDocument(keywords)) { response in
            LogPrint("GETPRODUCTDOCUMENT RESPONSE is")
            LogPrint(response)
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let getProductDocument = GetProductDocument.mappedGetProductDocument(JSON)
                    completion(getProductDocument, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func favoriteScheme(_ keywords: [String: AnyObject], completion: @escaping (_ result: FavoriteSchemeModel?, _ error: Error?) -> Void) {
        _ = API.request(.favoriteScheme(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let favoriteSchemeResponse = FavoriteSchemeModel.mappedFavoriteSchemeModel(JSON)
                    completion(favoriteSchemeResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func getSchemeHistoricalReturn(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetSchemeHistoricalReturnModel?, _ error: Error?) -> Void) {
        _ = API.request(.getSchemeHistoricalReturn(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let getSchemeHistoricalReturnResponse = GetSchemeHistoricalReturnModel.mappedGetSchemeHistoricalReturnModel(JSON)
                    completion(getSchemeHistoricalReturnResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func getNavDateOnRange(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetNavOnDateRangeModel?, _ error: Error?) -> Void) {
        _ = API.request(.getNavOnDateRange(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
//                    LogPrint("<><><><>< GET NAV RESPONSE><><><><><>")
//                    LogPrint(response.result.value)

                    let getNavOnDateRangeModelResponse = GetNavOnDateRangeModel.mappedGetNavOnDateRangeModel(JSON)
                    completion(getNavOnDateRangeModelResponse, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func getSchemeHolding(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetSchemeHolding?, _ error: Error?) -> Void) {
        _ = API.request(.getSchemeHolding(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let getSchemeHolding = GetSchemeHolding.mappedGetSchemeHolding(JSON)
                    completion(getSchemeHolding, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func getFocusedFundSchemes(_ keywords: [String: AnyObject], completion: @escaping (_ result: GetFocusedFundSchemesModel?, _ error: Error?) -> Void) {
        _ = API.request(.getFocusedFundsRequest(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let focusedFundSchemeResult = GetFocusedFundSchemesModel.mappedGetFocusedFundSchemesModel(JSON)
                    completion(focusedFundSchemeResult, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }

    func getProductReturnsDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: CalculateReturnsJSONModel?, _ error: Error?) -> Void) {
        _ = API.requestString(.getProductReturns(keywords), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let firstIndex = response.result.value?.characters.index(of: "{"), let tempIndex = response.result.value?.range(of: "}", options: String.CompareOptions.backwards, range: nil, locale: nil)?.lowerBound, let lastIndex = response.result.value?.index(tempIndex, offsetBy: 1) {
                    var json = response.result.value?.substring(with: Range(firstIndex ..< lastIndex))
                    json = json?.replacingOccurrences(of: "\0", with: "")
                    json = json?.replacingOccurrences(of: "\\", with: "")
                    json = json?.replacingOccurrences(of: "\n", with: "")

                    guard let string = json, let data: CalculateReturnsJSONModel = Mapper<CalculateReturnsJSONModel>().map(JSONString: string) else {
                        completion(nil, nil)
                        return
                    }
                    completion(data, nil)
                    return
                }
                completion(nil, nil)
            }
        })
    }

    func getProductTrailingReturnDetails(_ keywords: [String: AnyObject], completion: @escaping (SchemeTrailingReturnJSONModel?, Error?) -> Void) {
        _ = API.request(.getProductTrailingReturns(keywords)) { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let JSON = response.result.value as? [String: AnyObject] {
                    let trailingReturnModel = SchemeTrailingReturnJSONModel.mappedSchemeTrailingReturnModel(JSON)
                    completion(trailingReturnModel, response.result.error)
                } else {
                    completion(nil, NSError(domain: "Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "Parsing Error"]))
                }
            }
        }
    }
    
    
    func getRetireMentCalculatorDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: RetirementCalculatorJSONModel?, _ error: Error?) -> Void) {
        _ = API.requestString(.retirementCalculatorRequest(keywords), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let firstIndex = response.result.value?.characters.index(of: "{"), let tempIndex = response.result.value?.range(of: "}", options: String.CompareOptions.backwards, range: nil, locale: nil)?.lowerBound, let lastIndex = response.result.value?.index(tempIndex, offsetBy: 1) {
                    var json = response.result.value?.substring(with: Range(firstIndex ..< lastIndex))
                    json = json?.replacingOccurrences(of: "\0", with: "")
                    json = json?.replacingOccurrences(of: "\\", with: "")
                    json = json?.replacingOccurrences(of: "\n", with: "")
                    
                    guard let string = json, let data: RetirementCalculatorJSONModel = Mapper<RetirementCalculatorJSONModel>().map(JSONString: string) else {
                        completion(nil, nil)
                        return
                    }
                    completion(data, nil)
                    return
                }
                completion(nil, nil)
            }
        })
    }
    
    func getSIPCalculatorDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: SIPCalculatorJSONModel?, _ error: Error?) -> Void) {
        _ = API.requestString(.sipCalculatorRequest(keywords), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let firstIndex = response.result.value?.characters.index(of: "{"), let tempIndex = response.result.value?.range(of: "}", options: String.CompareOptions.backwards, range: nil, locale: nil)?.lowerBound, let lastIndex = response.result.value?.index(tempIndex, offsetBy: 1) {
                    var json = response.result.value?.substring(with: Range(firstIndex ..< lastIndex))
                    json = json?.replacingOccurrences(of: "\0", with: "")
                    json = json?.replacingOccurrences(of: "\\", with: "")
                    json = json?.replacingOccurrences(of: "\n", with: "")
                    
                    guard let string = json, let data: SIPCalculatorJSONModel = Mapper<SIPCalculatorJSONModel>().map(JSONString: string) else {
                        completion(nil, nil)
                        return
                    }
                    completion(data, nil)
                    return
                }
                completion(nil, nil)
            }
        })
    }
    
    func getFinGoalPlanDetails(_ keywords: [String: AnyObject], completion: @escaping (_ result: FinGoalPlanJSONModel?, _ error: Error?) -> Void) {
        _ = API.requestString(.finGoalPlanRequest(keywords), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let firstIndex = response.result.value?.characters.index(of: "{"), let tempIndex = response.result.value?.range(of: "}", options: String.CompareOptions.backwards, range: nil, locale: nil)?.lowerBound, let lastIndex = response.result.value?.index(tempIndex, offsetBy: 1) {
                    var json = response.result.value?.substring(with: Range(firstIndex ..< lastIndex))
                    json = json?.replacingOccurrences(of: "\0", with: "")
                    json = json?.replacingOccurrences(of: "\\", with: "")
                    json = json?.replacingOccurrences(of: "\n", with: "")
                    
                    guard let string = json, let data: FinGoalPlanJSONModel = Mapper<FinGoalPlanJSONModel>().map(JSONString: string) else {
                        completion(nil, nil)
                        return
                    }
                    completion(data, nil)
                    return
                }
                completion(nil, nil)
            }
        })
    }
    
    func getSalesToolGoals(_ keywords: [String: AnyObject], completion: @escaping (_ result: SalesToolGoalJsonModel?, _ error: Error?) -> Void) {
        _ = API.requestString(.salesToolGoalsRequest(keywords), completionHandler: { response in
            if (response.result.error) != nil {
                completion(nil, response.result.error as NSError?)
            } else {
                if let firstIndex = response.result.value?.characters.index(of: "{"), let tempIndex = response.result.value?.range(of: "}", options: String.CompareOptions.backwards, range: nil, locale: nil)?.lowerBound, let lastIndex = response.result.value?.index(tempIndex, offsetBy: 1) {
                    var json = response.result.value?.substring(with: Range(firstIndex ..< lastIndex))
                    json = json?.replacingOccurrences(of: "\0", with: "")
                    json = json?.replacingOccurrences(of: "\\", with: "")
                    json = json?.replacingOccurrences(of: "\n", with: "")
                    
                    guard let string = json, let data: SalesToolGoalJsonModel = Mapper<SalesToolGoalJsonModel>().map(JSONString: string) else {
                        completion(nil, nil)
                        return
                    }
                    completion(data, nil)
                    return
                }
                completion(nil, nil)
            }
        })
    }
}
