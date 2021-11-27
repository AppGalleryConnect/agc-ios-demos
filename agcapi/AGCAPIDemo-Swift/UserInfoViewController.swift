//
//  Copyright (c) Huawei Technologies Co., Ltd. 2020. All rights reserved
//

import UIKit
import AGConnectAuth

class UserInfoViewController: UIViewController {

    @IBOutlet weak var uid: UILabel!
    @IBOutlet weak var name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "User Info"
        
        uid.text = AGCAuth.instance().currentUser?.uid
        name.text = AGCAuth.instance().currentUser?.displayName
    }
    
    @IBAction func logout(_ sender: Any) {
        AGCAuth.instance().signOut()
        self.navigationController?.popViewController(animated: true)
    }
}
