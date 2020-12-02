//
//  BasePresenter.swift
//  Prueba Gapsi
//
//  Created by Pirata Ram on 01/12/20.
//

import Foundation

protocol BasePresenter {
    func onRegisterView(viewToCallBack: CallBackProtocol)
    func onCreate(params: Any)
    func onExecute(params: Any)
    func onReturnResult(params: Any)
    func onStop(params: Any)
}
