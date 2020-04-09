//
//  ButtonExtention.swift
//  Rxswift_MVVM_RailsAPI_Bookshelf
//
//  Created by 松平礼史 on 2020/04/10.
//  Copyright © 2020 松平礼史. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        touchStartAnimation()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        touchEndAnimation()
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        touchEndAnimation()
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0
    @IBInspectable var borderWidth: CGFloat = 0.0
    @IBInspectable var borderColor: UIColor = UIColor.clear
    
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
        clipsToBounds = true
    }
}


// MARK: - Private functions
extension CustomButton {
    
    //影付きのボタンの生成
//    internal func commonInit(){
//        self.layer.shadowOffset = CGSize(width: 1, height: 1 )
//        self.layer.shadowColor = UIColor.gray.cgColor
//        self.layer.shadowRadius = 5
//        self.layer.shadowOpacity = 1.0
//    }
    
    //ボタンが押された時のアニメーション
    internal func touchStartAnimation() {
        UIView.animate(withDuration: 0.1, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: {() -> Void in
            self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95);
            self.alpha = 0.9
        },completion: nil)
    }
    
    //ボタンから手が離れた時のアニメーション
    internal func touchEndAnimation() {
        UIView.animate(withDuration: 0.1, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: {() -> Void in
            self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0);
            self.alpha = 1
        },completion: nil)
    }
}
