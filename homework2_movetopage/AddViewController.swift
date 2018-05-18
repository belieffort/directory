//
//  AddViewController.swift
//  homework2_movetopage
//
//  Created by 한병두 on 2018. 5. 14..
//  Copyright © 2018년 Byungdoo Han. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    
    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtCompany: UITextField!
    @IBOutlet var txtAddress: UITextView!
    @IBOutlet var txtPhone: UITextField!
    @IBOutlet var txtHomeNumber: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
     

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    
    @IBAction func btnDone(_ sender: UIButton) {
        let name = txtName.text
        let company = txtCompany.text
        let address = txtAddress.text
        let phone = txtPhone.text
        let homeNumber = txtHomeNumber.text
        
        let directory = Directory(context: context)
        
        directory.name = name
        directory.company = company
        directory.address = address
        directory.phone  = phone
        directory.homeNumber = homeNumber
        appDelegate.saveContext()
        _ = navigationController?.popViewController(animated: true)
        
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
