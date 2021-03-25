//
//  SafariViewController.swift
//  FujiNet
//
//  Created by Sasha Fujiwara on 2021/03/24.
//

import UIKit
import SafariServices

class SafariViewController: UIViewController {
    @IBOutlet weak var searchQuestionLabel: UILabel!
    var searchQuestion = ""
var numOfSpaces = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        searchQuestionLabel.text = searchQuestion
        SafariServices.kFontEnglishLanguage

       if searchQuestion.contains(" ") {
            let replaced = searchQuestion.replacingOccurrences(of: " ", with: "+")
        if let url = URL(string: "https://www.google.com/search?q=\(replaced)") {
            var svc = SFSafariViewController(url: url)
            present(svc, animated: true, completion: nil)
            
        }
       } else {
        if let url = URL(string: "https://www.google.com/search?q=\(searchQuestion)") {
            var svc = SFSafariViewController(url: url)
            present(svc, animated: true, completion: nil)
            
            }
        }
    
        


}
}
