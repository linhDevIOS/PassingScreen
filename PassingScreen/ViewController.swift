//
//  ViewController.swift
//  PassingScreen
//
//  Created by hoanglinh on 8/21/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtHoten: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view1: viewdidload")
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.9142659206, green: 1, blue: 0.1082854591, alpha: 1)
        self.navigationItem.title = "Shop"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"Watch", style:.plain, target:nil, action:nil)
     
    }

//Appear
    override func viewWillAppear(_ animated: Bool) {
        print("view1:  will appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("view1: did appear")
    }
    
//Disappear
    override func viewWillDisappear(_ animated: Bool) {
        print("view1: will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print(" view1: did disappear")
    }
    @IBAction func GotoGreen(_ sender: Any) {
        //Tao storyboard
        let story = UIStoryboard(name: "Main", bundle: nil)
        
        //Tao mh xanh
        let manhinhxanh = story.instantiateViewController(withIdentifier: "mh2") as! ScreenGreen
        manhinhxanh.hoten = txtHoten.text!
        //push to green
        navigationController?.pushViewController(manhinhxanh, animated: true)
    }
}

