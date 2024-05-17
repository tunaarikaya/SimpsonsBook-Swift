//
//  ViewController.swift
//  simpsonBook
//
//  Created by Mehmet Tuna Arıkaya on 17.05.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var mySimpsons = [Simpson]()
    var chosenSimpson : Simpson?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource=self
        tableView.delegate=self
        
        
        //simpson objects
        
        let homer = Simpson(simpsonName:"Homer Simpson" , simpsonJob:"Nuclear Safety", simpsonImage: UIImage(named: "homer.png")!)
        let marge = Simpson(simpsonName:"Marge Simpson" , simpsonJob:"Housewife", simpsonImage: UIImage(named: "marge.png")!)
        let bart = Simpson(simpsonName:"Bart Simpson" , simpsonJob:"Student ", simpsonImage: UIImage(named: "bart.png")!)
        let lisa = Simpson(simpsonName:"Lisa Simpson" , simpsonJob:"Student", simpsonImage: UIImage(named: "lisa.png")!)
        let maggie = Simpson(simpsonName:"Maggie Simpson" , simpsonJob:"baby", simpsonImage: UIImage(named: "maggie.png")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        
        
        
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell=UITableViewCell()
        var content=cell.defaultContentConfiguration()
        content.text=mySimpsons[indexPath.row].name
        content.secondaryText=""
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson=mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil )
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson 
        }
    }
    
}
