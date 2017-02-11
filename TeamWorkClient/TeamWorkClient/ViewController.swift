//
//  ViewController.swift
//  TeamWorkClient
//
//  Created by Anton Gubarenko on 14.01.17.
//  Copyright © 2017 Anton Gubarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate let apiClient:TWApiClient = TWApiClient.init(url: "", token: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*let tag: Tag = Tag.createEmpty()
        tag.id = 1
        tag.name = ""
        
        var dict = tag.dictionaryRepresentation()*/
        
        
        apiClient.getAuthenticate { (success, code, account, error) in
            self.getProjects()
        }
    }

    private func getProjects() {
        apiClient.getAllProjects(urlParams: "status=ALL") { (success, code, projects, error) in
            for project: Project in projects!{
                print("Name: \(project.name!)")
            }
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

