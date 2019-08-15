//
//  ViewController.swift
//  CustomUITableView
//
//  Created by Mohamed on 8/15/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UITableViewDataSource , UITableViewDelegate{
   
    @IBOutlet weak var tableView: UITableView!
    
    let imagArray = [UIImage(named: "img1") , UIImage(named: "img2") , UIImage(named: "img3") ,
                     UIImage(named: "img4") , UIImage(named: "img5")]
    
    let labelMsg = [("Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length") ,
                    
                    ("sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences") ,
                    ("Before you can begin to determine what the composition of a particular paragraph will be") , ("each paragraph must be related to that idea. In other words, your paragraphs should remind your") , ("So, let’s suppose that you have done some brainstorming to develop your thesis")]
    let labelTitle = [("The Writing Center") , ("APPOINTMENTS") , ("ONLINE COACHING") , ("TIPS & TOOLS") , ("organize a paragraph")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return labelTitle.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier") as! CustomTableViewCell
    
        cell.imag.image = imagArray[indexPath.row]
        cell.titleLabel.text = labelTitle[indexPath.row]
        cell.labelMsg.text = labelMsg[indexPath.row]
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    

}

