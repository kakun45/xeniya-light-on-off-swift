//
//  ViewController.swift
//  xeniya-light-on-off-swift
//
//  Created by Guest User on 10/17/24.
//

import UIKit

class ViewController: UIViewController {
    var isLightOn = true
    
    @IBOutlet var closedEye: UIImageView!
    @IBOutlet var openedEye: UIImageView!
    @IBOutlet var btnText: UIButton!
    //    closedEye.isHidden = true

    fileprivate func btnFunctionality() {
        // Do any additional setup after loading the view.
        if isLightOn {
            view.backgroundColor = .white
            btnText.setTitle("Lights OFF", for: .normal)
            closedEye.isHidden = true
            openedEye.isHidden = false
            btnText.tintColor = .systemBlue
        } else {
            view.backgroundColor = .black
            btnText.setTitle("Lights ON 💡", for: .normal)
            closedEye.isHidden = false
            openedEye.isHidden = true
            btnText.tintColor = .white
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnFunctionality()
    }

    @IBAction func swtchBtn(_ sender: UIButton) {
        isLightOn = !isLightOn
        btnFunctionality()
    }
    
}
