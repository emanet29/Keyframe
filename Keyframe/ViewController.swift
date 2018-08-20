//
//  ViewController.swift
//  Keyframe
//
//  Created by Snoopy on 20/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bouton: UIButton!
    
    var frameDeMonBouton: CGRect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func boutonAction(_ sender: Any) {
        bouton.isUserInteractionEnabled = false
        frameDeMonBouton = bouton.frame
        
        UIView.animateKeyframes(withDuration: 4, delay: 0, options: UIViewKeyframeAnimationOptions.calculationModeLinear, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25, animations: {
                self.bouton.backgroundColor = .blue
            })
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.5, animations: {
                self.bouton.center.y = 50
            })
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25, animations: {
                self.bouton.layer.cornerRadius = 25
            })
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                self.bouton.alpha = 0
            })
        }) { (success) in
            UIView.animate(withDuration: 1, animations: {
                self.bouton.backgroundColor = .white
                self.bouton.frame = self.frameDeMonBouton
                self.bouton.layer.cornerRadius = 0
                self.bouton.alpha = 1
                self.bouton.isUserInteractionEnabled = true
            })
        }
        
    }
    
}

