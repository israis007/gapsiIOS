//
//  BaseImplementation.swift
//  Prueba Gapsi
//
//  Created by Pirata Ram on 01/12/20.
//

import Foundation

class BaseImplementation: BasePresenter {
    public var viewToCallBack: CallBackProtocol?
    
    func onRegisterView(viewToCallBack: CallBackProtocol) {
        self.viewToCallBack = viewToCallBack
    }
        
    func onCreate(params: Any) {
        print("onCreate process")
    }
        
    func onExecute(params: Any) {
        print("onExecute process")
    }
        
    func onReturnResult(params: Any) {
        print("onReturnResult process")
        if (viewToCallBack != nil) {
            viewToCallBack!.onCallBack(params: params)
        }
    }
        
    func onStop(params: Any) {
        print("onStop process")
    }
        
}
