//
//  DetailVC.swift
//  SimpsonBook
//
//  Created by ismail harmanda on 26.10.2023.
//

import UIKit

class DetailVC: UIViewController {
    
    var selectedSimpson: Simpson?
    
    
    

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if selectedSimpson != nil {
            imageView.image = selectedSimpson?.image
            nameLabel.text = selectedSimpson?.name
            jobLabel.text = selectedSimpson?.job
        }
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
