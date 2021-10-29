//
//  Copyright (c) Huawei Technologies Co., Ltd. 2020. All rights reserved
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

