//
//  ViewController.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 26.10.2020.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet var loginInput: UITextField!
    @IBOutlet var passwordInput: UITextField!
    
    @IBAction func TapButtonOne(_ sender: Any) {
        let login = loginInput.text
        let password = passwordInput.text
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TapBar")
        
        if login == "admin" && password == "123456" {
            print("okay")
            present(vc, animated: true, completion: nil)
        } else {
            print("error")
            let alert = UIAlertController(title: "Ошибка", message: "Введены неверные данные пользователя", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

