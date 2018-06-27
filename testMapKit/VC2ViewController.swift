//
//  VC2ViewController.swift
//  testMapKit
//
//  Created by Nguyen Duc Tai on 5/8/18.
//  Copyright © 2018 Nguyen Duc Tai. All rights reserved.
//

import UIKit

class VC2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        self.showAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func showAnimation() {
        self.view.transform = .init(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25) {
            self.view.alpha = 1.0
            self.view.transform = .init(scaleX: 1.0, y: 1.0)
        }
    }
    
    @IBAction func back(_ sender: Any) {
        self.removeAnimation()
    }
    func removeAnimation() {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = .init(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0
        }) { (finished: Bool) in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        }
    }

}
