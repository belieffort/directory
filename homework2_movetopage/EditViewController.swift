//
//  EditViewController.swift
//  homework2_movetopage
//
//  Created by 한병두 on 2018. 5. 14..
//  Copyright © 2018년 Byungdoo Han. All rights reserved.
//

import UIKit
import CoreData

class EditViewController: UIViewController  {
    
    var directory : Directory?

    @IBOutlet var foreditName: UITextField!
    @IBOutlet var foreditCompany: UITextField!
    @IBOutlet var foreditAddress: UITextView!
    @IBOutlet var foreditPhone: UITextField!
    @IBOutlet var foreditHomeNumber: UITextField!
    
    
    var editName: String!
    var editCompany: String!
    var editAddress: String!
    var editPhone: String!
    var editHomeNumber: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
 
        foreditName.text = editName
        foreditCompany.text = editCompany
        foreditAddress.text = editAddress
        foreditPhone.text = editPhone
        foreditHomeNumber.text = editHomeNumber
    

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnDelete(_ sender: UIButton) {
        context.delete(directory!)
        appDelegate.saveContext()
        _ = navigationController?.popViewController(animated: true)
     
        
        }
    
    @IBAction func btnEditDone(_ sender: UIButton) {
        
        let name = foreditName.text
        let company = foreditCompany.text
        let address = foreditAddress.text
        let phone = foreditPhone.text
        let homeNumber = foreditHomeNumber.text
        
        let directory = Directory(context: context)
        
        directory.name = name
        directory.company = company
        directory.address = address
        directory.phone = phone
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
