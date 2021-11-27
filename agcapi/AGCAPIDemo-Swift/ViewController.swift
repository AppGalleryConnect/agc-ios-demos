//
//  Copyright (c) Huawei Technologies Co., Ltd. 2020. All rights reserved
//

import UIKit
import AGConnectAuth

class ViewController: UITableViewController {
    var items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "AGCAPIDemo"
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellid")
        
        // get supported auth providers
        let providers = AGCAuth.instance().supportProviders()
        print("supportedAuthProviders %@", providers)
        for provider in providers {
            switch provider.intValue {
            case AGCAuthProviderType.apple.rawValue:
                items.append("loginWithApple")
            default:
                print("default")
            }
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid")
        cell?.textLabel?.text = items[indexPath.row]
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let action = items[indexPath.row]
        switch action {
        case "loginWithApple":
            loginWithApple()
        default:
            print("default")
        }
    }
    
    func loginWithApple() {
        AGCAuth.instance().signIn(provider: AGCAuthProviderType.apple, controller: self).onSuccess { (result) in
            print("success")
            // show user info
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let viewController = storyboard.instantiateViewController(withIdentifier: "UserInfo")
            self.navigationController?.pushViewController(viewController, animated: true)
        }.onFailure { (error) in
            print("failed")
        }
    }

}

