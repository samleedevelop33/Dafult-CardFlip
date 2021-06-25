//
//  ViewController.swift
//  cardFlip
//
//  Created by sam on 2021/01/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnCard: UIButton!
    var isOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    
    @IBAction func btnFlip(_ sender : Any){
        if isOpen {
            isOpen = false
            btnCard.setTitle("앞앞앞", for: .normal)
            btnCard.backgroundColor = .black
            UIView.transition(with: btnCard, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }else {
            isOpen = true
            btnCard.setTitle("뒤뒤", for: .normal)
            btnCard.backgroundColor = .brown
            UIView.transition(with: btnCard, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
}

