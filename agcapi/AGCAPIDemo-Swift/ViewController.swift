//
// Copyright 2020. Huawei Technologies Co., Ltd. All rights reserved.
//
//    Licensed under the Apache License, Version 2.0 (the "License");
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.
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

