//
//  ViewController.swift
//  urlSessionTest
//
//  Created by HappyDuck on 2021/12/01.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var searchTextField: UITextField!
    
    var urlManager = UrlManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextField.delegate = self
    }
    
    @IBAction func searchBtnPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let city = searchTextField.text {
            urlManager.fetchData(cityName: city)
        }
        searchTextField.text = ""
    }


}

