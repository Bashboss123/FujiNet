//
//  ViewController.swift
//  FujiNet
//
//  Created by Sasha Fujiwara on 2021/03/23.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    var searchText = ""
    var numOfStoryBoards = 1
    

    @IBOutlet weak var search: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func searchButton(_ sender: UIButton) {
        if search.text != ""{
          
        searchText = search.text!
            performSegue(withIdentifier: "segue", sender: nil)
            
                
            }
            
            
            }
        
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! SafariViewController
        if search.text != "" {
        nvc.searchQuestion = search.text!
        }
        
    }
    
    @IBAction func newTabTap(_ sender: UITapGestureRecognizer) {
        let newViewController = UIViewController()
        let textField = UITextField()
        textField.center = CGPoint(x: 0, y: 0)
        let button = UIButton()
        button.center = CGPoint(x: 0, y: -10)
        
        
        present(newViewController, animated: true, completion: nil)
        
    }
}


