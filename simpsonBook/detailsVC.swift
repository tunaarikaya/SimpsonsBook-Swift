//
//  detailsVC.swift
//  simpsonBook
//
//  Created by Mehmet Tuna Arıkaya on 17.05.2024.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
   
    
    @IBOutlet weak var jobLabel: UILabel!
    var selectedSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text=selectedSimpson?.name
        jobLabel.text=selectedSimpson?.job
        imageView.image=selectedSimpson?.image
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
