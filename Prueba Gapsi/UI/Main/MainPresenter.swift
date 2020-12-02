//
//  MainPresenter.swift
//  Prueba Gapsi
//
//  Created by Pirata Ram on 01/12/20.
//

import Foundation

class MainPresenter: BaseImplementation, MainPresenterProtocol {
    
    private var list_items: [Item] = []	
    private var repo:WebServiceProtocol = WebService()
    
    /*------> Search and paste results <------*/
    func clickSearch(completion: @escaping (Bool) -> ()) {
        print("Inicia search")
        self.list_items.removeAll()
        if let search = (self.viewToCallBack!.getContext() as? MainViewController)!.getTextfieldSearch().text {
            print("search es \(search)")
            let search_no_spaces = search.trimmingCharacters(in: .whitespacesAndNewlines)
            repo.searchItems(search: search_no_spaces, completion: { (data) -> () in
                if let itemFromResponse = data as? NSDictionary {
                    print("item es \(itemFromResponse)")
                    let item = Item(id: itemFromResponse["id"] as! String,
                                    rating: itemFromResponse["rating"] as! Double,
                                    price: itemFromResponse["price"] as! Double,
                                    imageProd: itemFromResponse["image"] as! String,
                                    name: itemFromResponse["title"] as! String)
                    self.list_items.append(item)
                } else if let response = data as? Bool {
                    completion(response)
                }
            })
        }
    }
    
    func getItemsCount() -> Int{
        return list_items.count
    }
    
    func getItem(item: Int) -> Item {
        return list_items[item]
    }
        
}
