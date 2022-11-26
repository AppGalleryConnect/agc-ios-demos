/*
 * Copyright 2020. Huawei Technologies Co., Ltd. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import UIKit
import AGConnectFunction

class NumberInfo {
    var number1 = ""
    var number2 = ""
}

class ResultInfo {
    var result = 0
}

class ViewController: UIViewController {

    @IBOutlet var input1 : UITextField!
    @IBOutlet var input2 : UITextField!
    @IBOutlet var sumLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickAddButton(_: UIButton) {
        let callable = AGCFunction.getInstance().wrap("addtest-$latest")
        let num = NumberInfo()
        num.number1 = self.input1.text ?? ""
        num.number2 = self.input2.text ?? ""
        callable.call(with: num).onSuccess { (result) in
            let sum = result?.value(with: ResultInfo.self) as! ResultInfo
            self.sumLabel.text = "Sum : \(sum.result)"
        }.onFailure { (error) in
            print(error)
        }
    }
}

