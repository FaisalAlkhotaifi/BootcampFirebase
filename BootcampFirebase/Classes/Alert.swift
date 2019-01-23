//
//  Alert.swift
//  BootcampFirebase
//
//  Created by TechCampus on 1/23/19.
//  Copyright © 2019 TechCampus. All rights reserved.
//

import Foundation
import UIKit

public func showAlert(title: String, msg: String, actionBtnTitle: String) -> UIAlertController {
    let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: actionBtnTitle, style: .default, handler: nil))
    return alertController
}
