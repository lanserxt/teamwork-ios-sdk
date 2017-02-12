//
//  ViewController.swift
//  TeamWorkClient
//
//  Created by Anton Gubarenko on 14.01.17.
//  Copyright © 2017 Anton Gubarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate let apiClient:TWApiClient = TWApiClient.init(url: "https://itgroup1.teamwork.com", token: "tank860cut")

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
        apiClient.getAllProjects(urlParams: "status=ALL") { [weak self] (success, code, projects, error) in
            for project: Project in projects!{
                print("Name: \(project.name!) id: \(project.id!)")
                self?.getTasksForProjectId(project.id!)
            }
        }
        
    }
    
    private func getTasksForProjectId(_ projectId: String){
        
        apiClient.getTasksForProject(projectId: projectId, urlParams: "", { (success, code, tasks, error) in
            for task: TodoItem in tasks!{
                print("Id: \(task.id!) content: \(task.content!)")
            }
        })
    }

}
