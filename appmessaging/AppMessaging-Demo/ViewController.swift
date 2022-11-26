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
import AGConnectCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func debugMessage(_ sender: Any) {
        //Step 1
        //Obtain the AAID of the device and add the AAID to the AppGallery Connect server. For details, please refer to the development guide.
        let aaid = AGCInstanceId.sharedInstance().uuid        
        //Step 2
        //Add the '-AGConnectDeveloperMode' launch parameter to the app scheme.
        
        //Step 3
        //Trigger an event so the SDK can synchronize test device data from the AppGallery Connect server.
    }
    
}

