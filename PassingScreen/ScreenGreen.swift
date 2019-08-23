//
//  ScreenGreen.swift
//  PassingScreen
//
//  Created by hoanglinh on 8/21/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class ScreenGreen: UIViewController {
    var hoten:String = ""
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view2: Did load / (da load xong)")
       
    }
    
    
    //Appear
    override func viewWillAppear(_ animated: Bool) {
        print("view2: will appear / (se xuat hien )")
        txtName.text = hoten
    }
    override func viewDidAppear(_ animated: Bool) {
        print("view2: did appear / (da xuat hien)")
    }
    
    //Disappear
    override func viewWillDisappear(_ animated: Bool) {
        print(" view2:  will disappear / (se bien mat )")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("view2: did disappear / (da bien mat)")
    }

    @IBAction func nexttoredgreen(_ sender: Any) {
        //chuyen toi man hinh do
        //tao storyboard
        let story = UIStoryboard(name: "Main", bundle: nil)
        let manhinhdo = story.instantiateViewController(withIdentifier: "mh3") as! RedScreen
        navigationController?.pushViewController(manhinhdo, animated: true)
    }
    
}
