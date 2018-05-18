//
//  ViewController.swift
//  homework2_movetopage
//
//  Created by 한병두 on 2018. 5. 14..
//  Copyright © 2018년 Byungdoo Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblCompany: UILabel!
    @IBOutlet var lblAddress: UILabel!
    @IBOutlet var lblPhone: UILabel!
    @IBOutlet var lblHomeNumber: UILabel!
    
    var directory: Directory?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lblName.text = directory?.name
        lblCompany.text = directory?.company
        lblAddress.text = directory?.address
        lblPhone.text = directory?.phone
        lblHomeNumber.text = directory?.homeNumber

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let editPage = segue.destination as? EditViewController else { return}
        editPage.editName = lblName.text
        editPage.editCompany = lblCompany.text
        editPage.editAddress = lblAddress.text
        editPage.editPhone = lblPhone.text
        editPage.editHomeNumber = lblHomeNumber.text

    }
    
}

