//
//  ViewController.swift
//  Window-Shopper
//
//  Created by Ankur Bhayana on 28/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wageTxt: ModifiedTxtField!
    @IBOutlet weak var priceTxt: ModifiedTxtField!
    
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = UIColor.orange
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(UIColor.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate(){
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt) , let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Hours.getHours(Wage: wage, Price: price))"
            }
        }
        
    }
    
    
    @IBAction func ClearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
    }
    
}

