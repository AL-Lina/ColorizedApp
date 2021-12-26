//
//  ColorViewController.swift
//  HW 2
//
//  Created by Alina Sokolova on 26.12.21.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import UIKit

protocol ChangeColorWithSlidersViewControllerDelegate {
    func changeColor(firstSlider: CGFloat, secondSlider: CGFloat, thirdSlider: CGFloat) 
    
}

class ColorViewController: UIViewController {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let changeColorVC = navigationVC.topViewController as? ChangeColorWithSlidersViewController else { return }
        changeColorVC.delegate = self
    }
}

extension ColorViewController: ChangeColorWithSlidersViewControllerDelegate {
    func changeColor(firstSlider: CGFloat, secondSlider: CGFloat, thirdSlider: CGFloat) {
        view.backgroundColor = UIColor(red: firstSlider, green: secondSlider, blue: thirdSlider, alpha: 1)
    }
    }
    
    
    

