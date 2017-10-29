//
//  CustomNavigationViewController.swift
//  hoytecuento
//
//  Created by Carlos  Cupeiro Durán on 29/10/17.
//  Copyright © 2017 Carlos  Cupeiro Durán. All rights reserved.
//

import UIKit

class CustomNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let width = self.navigationBar.frame.size.width
        let backImage = UIImage(named:"flecha_izq")
        UINavigationBar.appearance().frame = CGRect(x: 0, y: 0, width: width, height: 100)
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(),for:.default)
        
        
        UIBarButtonItem.appearance().setBackButtonBackgroundImage(backImage, for: .normal, barMetrics: .default)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
