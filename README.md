TeamWork iOS SDK
===============

Plain and simple UIView category that adds overlay layer with specific color the the sublayers of the UIView.

##Requirements

* Xcode 7 (or higher)
* Apple LLVM compiler
* SWIFT 3.0
* iOS 9.1 (or higher)

##Installation

Recommended way to install TeamWork iOS SDK is via [CocoaPods](http://cocoapods.org/). Add the following line to your Podfile:

```ruby
pod 'TeamWork-iOS-SDK'
```

##Usage

You just need to create an instance of TWApiClient and pass your URL and token. Token can be obtained in your Profile API section.

```swift
class ViewController: UIViewController {
    
    fileprivate let apiClient:TWApiClient = TWApiClient.init(url: "your_url", token: "your_token")

    override func viewDidLoad() {
        super.viewDidLoad()
        
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

}
```
