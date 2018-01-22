//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Dr. BingBing on 2017/12/23.
//  Copyright © 2017年 AppCoda. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet weak var restaurantimage: UIImageView!
    @IBOutlet var containerView: UIView!
    
    var restaurant: Restaurant!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantimage.image = UIImage(named: restaurant.image)

        // 下滑動畫
        //containerView.transform = CGAffineTransform.init(translationX: 0, y: -1000)
        
        // 逐漸變大動畫
        //containerView.transform = CGAffineTransform.init(scaleX: 0, y: 0)
        
        let scaleTrasform = CGAffineTransform.init(scaleX: 0, y: 0)
        let translateTrasform = CGAffineTransform.init(translationX: 0, y: -1000)
        //  透過concatenating來結合兩種變形
        let combineTrasform = scaleTrasform.concatenating(translateTrasform)
        containerView.transform = combineTrasform
        
        // view 的背景圖片模糊。要在背景圖片運用模糊效果，要先建立有effect效果的UIEffectview的物件，接著加上一個視覺效果視圖至背景圖片視圖
        // 樣式有 Dark , Light, Extra Light
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blureffectView = UIVisualEffectView(effect: blurEffect)
        blureffectView.frame = view.bounds
        backgroundImageView.addSubview(blureffectView)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
        // 逐漸變大動畫
        UIView.animate(withDuration: 0.3 , animations: {self.containerView.transform = CGAffineTransform.identity})
        
        // 彈跳動畫
//        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.2, options: .curveEaseInOut, animations: {self.containerView.transform = CGAffineTransform.identity}, completion: nil)
        
        // 滑下動畫
        //UIView.animate(withDuration: 0.3 , animations: {self.containerView.transform = CGAffineTransform.identity})
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
