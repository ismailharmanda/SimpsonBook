//
//  ViewController.swift
//  SimpsonBook
//
//  Created by ismail harmanda on 26.10.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let Homer = Simpson(name: "Homer Simpson", job: "Nuclear Safety", image: "homer")
    let Bart = Simpson(name: "Bart Simpson", job: "Student", image: "bart")
    let Maggie = Simpson(name: "Maggie Simpson", job: "Baby", image: "maggie")
    let Marge = Simpson(name: "Marge Simpson", job: "Housewife", image: "marge")
    let Lisa = Simpson(name: "Lisa Simpson", job: "Student", image: "lisa")
    
    var selectedSimpson: Simpson?
    
    var simpsons: [Simpson] = [Simpson]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        simpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = simpsons[indexPath.row].name
        content.secondaryText = simpsons[indexPath.row].job
        
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedSimpson = simpsons[indexPath.row]
        
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC"{
            let destinationVC = segue.destination as! DetailVC
            
            destinationVC.selectedSimpson = selectedSimpson
        }
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        simpsons = [Homer, Bart, Maggie, Marge, Lisa]
    }
    
    
    
    


}

