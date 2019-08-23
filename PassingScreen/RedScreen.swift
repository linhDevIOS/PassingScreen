//
//  RedScreen.swift
//  PassingScreen
//
//  Created by hoanglinh on 8/21/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class RedScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   //action cho view do
    @IBAction func GotoPrevious(_ sender: Any) {
        //goto xanh
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func GotoRoot(_ sender: Any) {
        //goto vang
        self.navigationController?.popToRootViewController(animated: false)
    }
    
    @IBAction func GotoView(_ sender: Any) {
        //goto anyviewcontroller
        let mh2 = self.navigationController?.viewControllers[1] as! ScreenGreen;
        mh2.hoten = "heloo red green"
        self.navigationController?.popToViewController(mh2, animated: true)
        
    }
    
    

}
