//
//  ViewController.swift
//  Zingmp3_
//
//  Created by Admin on 8/24/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        logo!.alpha = 0
        text!.alpha = 0
        name!.alpha = 0
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(4, animations: {
            self.logo!.alpha = 1
        }) {(finished) in
           
            UIView.animateWithDuration(2, animations:{
                self.text!.center = CGPointMake(self.logo!.center.x, 100)
                self.text!.alpha = 1
            }){(finished) in
                UIView.animateWithDuration(5, animations: {
                    self.name!.center = CGPointMake(self.name!.center.x,320)
                    self.logo!.alpha = 0.2
                    self.name!.alpha=1
                    })
            }
        }
        
    }


}

