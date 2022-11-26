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
import AGConnectAppLinking

class ViewController: UIViewController {

    @IBOutlet weak var shortLink: UILabel!
    @IBOutlet weak var longLink: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func create(_ sender: Any) {
        let components = AGCAppLinkingComponents()
        components.uriPrefix = "https://example.drcn.agconnect.link"
        components.deepLink = "https://www.example.com"
        components.iosBundleId = Bundle.main.bundleIdentifier
        components.iosDeepLink = "example://ios/detail"
        components.androidDeepLink = "example://android/detail"
        components.androidPackageName = "com.android.demo"
        components.campaignName = "name"
        components.campaignMedium = "App"
        components.campaignSource = "AGC"
        components.socialTitle = "Title"
        components.socialImageUrl = "https://example.com/1.png"
        components.socialDescription = "Description"
        
        longLink.text = components.buildLongLink().absoluteString
        components.buildShortLink { (shortLink, error) in
            if let e = error {
                print(e)
                return
            }
            self.shortLink.text = shortLink?.url.absoluteString
        }
    }
    
    @IBAction func openShortLink(_ sender: Any) {
        if let url = URL(string: self.shortLink.text ?? "") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func openLongLink(_ sender: Any) {
        if let url = URL(string: self.longLink.text ?? "") {
            UIApplication.shared.open(url)
        }
    }
    
}

