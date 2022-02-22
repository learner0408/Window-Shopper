//
//  ModifiedTxtField.swift
//  Window-Shopper
//
//  Created by Ankur Bhayana on 28/01/22.
//

import UIKit
@IBDesignable
class ModifiedTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size:CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: frame.size.height/2 - size/2, width: size, height: size))
        currencyLbl.backgroundColor = UIColor.white.withAlphaComponent(0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = UIColor.black
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter  = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizeField()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeField()
    }
    
    func customizeField(){
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = UIColor.white
        }
    }

}
