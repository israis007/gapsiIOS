//
//  CustomTableCellView.swift
//  Prueba Gapsi
//
//  Created by Pirata Ram on 01/12/20.
//

import UIKit

class CustomTableCellView: UITableViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var ivproduct: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func setData(id: String, rating: Double, price: String, imageProd: String, name: String) {
        self.ivproduct.downloaded(from: imageProd)
        self.lblName.text = name
        self.lblPrice.text = price
        self.lblRating.text = id
    }
    
}
