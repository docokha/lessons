//
//  ViewController.swift
//  vkapp
//
//  Created by  Денис Дегтяренко on 10.12.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var textLogin: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBAction func TapButton(_ sender: Any) {
        let login = textLogin.text
        let password = passwordText.text
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Menu")
        
        if login == "admin" && password == "123456" {
            present(vc, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Ошибка", message: "Введены неверные данные пользователя", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
    }
    
}

