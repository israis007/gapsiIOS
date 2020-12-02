//
//  WebService.swift
//  Prueba Gapsi
//
//  Created by Pirata Ram on 01/12/20.
//

import Foundation
import Alamofire

class WebService: WebServiceProtocol{
    
    private let WSB = WebServiceBuilder()
    
    /*------> Web Service functions <------*/
    public func searchItems(search: String, completion: @escaping (Any?) -> ()) {
        
        let headers: HTTPHeaders = [
            "X-IBM-Client-Id": "62e3cee8-a7b4-4579-8f70-08e99d09f27a"
        ]
        
        AF.request(WSB.getUrl(search: search),
                   method: .get,
                   encoding: URLEncoding.httpBody,
                   headers: headers).responseJSON { response in
                    switch (response.result) {
                    case .success(let JSON):
                        let response = JSON as! NSDictionary
                        // Toma id response
                        print("response es \(response)")
                        let items = response.object(forKey: "items") as! NSArray
                        for item in items {
                            print("item es: \(item)")
                            completion(item)
                        }
                        completion(true)
                        
                        break
                    case .failure(let error):
                        print("Failure, error es: \(error)")
                    }
                    print(response)
                }
    }
}
