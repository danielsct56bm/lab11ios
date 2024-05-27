//
//  ViewController.swift
//  QuequesanaSnapchat
//
//  Created by daniel quequesana on 20/05/24.
//

import UIKit
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func IniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){
            (user, error) in
            print("Intentando Iniciar Sesion")
            if error != nil {
                print("se presento el siguiente error: \(error)")
            } else {
                print("Inicio de sesionexitoso")
            }
            
        }
    }
    
}
