//
//  LoginViewModel.swift
//  Rxswift_MVVM_RailsAPI_Bookshelf
//
//  Created by 松平礼史 on 2020/04/10.
//  Copyright © 2020 松平礼史. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import RxOptional

class LoginViewModel {
    
//    let email: Driver<String>
//    let password: Driver<String>
    
    // Is signup button enabled
//    let signupEnabled: Driver<Bool>

    // Has user signed in
//    let signedIn: Driver<Bool>
    

    init(emailTextObservable: Observable<String?>,
         passwordTextObservable: Observable<String?>){
//            loginTaps: Signal<()>{
//        email = input.email
//        password = input.password
//
//        let emailAndPassword = Driver.combineLatest(input.email, input.password) { (email: $0, password: $1) }
                
        let event = Observable
        .combineLatest(emailTextObservable, passwordTextObservable)
        .skip(1)
//        .flatMap { emailText, passwordText -> Observable<Event<Void>> in
//            return model
//                .validate(idText: idText, passwordText: passwordText)
//                .materialize()
//        }
        .share()
    }
}
