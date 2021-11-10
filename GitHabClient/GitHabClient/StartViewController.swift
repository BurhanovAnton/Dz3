//
//  StartViewController.swift
//  GitHabClient
//
//  Created by Антон Бурханов on 08.11.2021.
//

import UIKit

class StartViewController: UIViewController {
    
    private let goToReg = "goToReg"

    @IBOutlet weak var loginText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var startBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToReg" {
            if letdestVC = segue.destination as? RegViewController
        }
    }
    
    func vhod (log:String, pas:String) {
        guard log == "admin" && pas == "admin" else {
            infoLabel.text = "Нет пользователя с такими данными!"
            return
        }
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
            
        }
        let rootController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "tabBar")
        appDelegate.window?.rootViewController = rootController
        
        
    }
    @IBAction func startButton(_ sender: Any) {
        infoLabel.textColor = UIColor.red
        if loginText.text == "" || passwordText.text == "" {
        infoLabel.text = "Не все данные введены!"
        }
        else{
           
            infoLabel.text = " "
            vhod (log: loginText.text!, pas: passwordText.text!)
        }
    }
    

}
