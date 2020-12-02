//
//  CallBackInterface.swift
//  Prueba Gapsi
//
//  Created by Pirata Ram on 01/12/20.
//

import Foundation
protocol CallBackProtocol {
    func onCallBack(params: Any)
    func showError(message: String)
    func showMessage(title: String, message: String)
    func showUpload()
    func getCallBack() -> CallBackProtocol
    func showLoadDialog()
    func hideLoadDialog()
    func getContext() -> BaseViewController
}
