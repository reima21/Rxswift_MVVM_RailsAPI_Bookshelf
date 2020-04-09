//
//  LoginViewController.swift
//  Rxswift_MVVM_RailsAPI_Bookshelf
//
//  Created by 松平礼史 on 2020/04/10.
//  Copyright © 2020 松平礼史. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Action



class LoginViewController: UIViewController {
        
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    private lazy var viewModel = LoginViewModel(
        emailTextObservable: emailTextField.rx.text.asObservable(),
        passwordTextObservable: passwordTextField.rx.text.asObservable()
//        loginTaps: loginButton.rx.tap.asSignal()
    )
            
    private let diposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
//        let emailAndPassword = Observable.combineLatest(emailTextField.rx.text.orEmpty, passwordTextField.rx.text.orEmpty)


    }
    

}
