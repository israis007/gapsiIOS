//
//  WebServiceBuilder.swift
//  Prueba Gapsi
//
//  Created by Pirata Ram on 01/12/20.
//

import Foundation

class WebServiceBuilder {
    public func getUrl(search: String) -> String {
        let url_return = "https://00672285.us-south.apigw.appdomain.cloud/demo-gapsi/search?&query=\(search)"
        return url_return
    }
}
