//
//  Simpson.swift
//  SimpsonBook
//
//  Created by ismail harmanda on 26.10.2023.
//

import Foundation
import UIKit

class Simpson {
         
    var name: String
    var job: String
    var image: UIImage
    
    init(name: String, job: String, image: String){
        self.name = name
        self.job = job
        self.image = UIImage(imageLiteralResourceName: image)
    }
}
