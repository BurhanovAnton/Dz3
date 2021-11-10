//
//  RegViewController.swift
//  GitHabClient
//
//  Created by Антон Бурханов on 08.11.2021.
//

import UIKit

class RegViewController: UIViewController {
    @IBOutlet weak var buttonReg: UIButton!
    @IBOutlet weak var logText: UITextField!
    @IBOutlet weak var mailText: UITextField!
    @IBOutlet weak var pasText: UITextField!
    @IBOutlet weak var nilRegText: UILabel!
    @IBOutlet weak var label1: UILabel!
    
    var completion: ((String, String, String) ->())
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    @IBAction func buttonOk(_ sender: Any) {
        guard logText.text != "" || mailText.text != "" || pasText.text != "" else{
            nilRegText.text = "Не все поля заполнены!"
            return
        }
        nilRegText.text = "1"
        let pas = pasText.text
        let log = logText.text
        let mail = mailText.text
        label1.text = "логин \(log) пароль \(pas) почта \(mail)"
        completion(log, pas,mail)
        self.dismiss(animated: true, completion: nil)        /*navigationController?.popViewController(animated: true)
        delegate?.setText(text: log)
        */
  //      nilRegLabel.text = "Не все поля заполнены!"
 //   }
   // if logText.text != "" && mailText.text != "" && pasText.text != "" {
//        nilRegLabel.text = "Регистрация произведена!"
  //  }
    
    
    
    }
}
