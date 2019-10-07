//
//  SimpleAlert.swift
//  SimpleAlert
//
//  Created by Hector on 10/7/19.
//  Copyright © 2019 Hector. All rights reserved.
//

import UIKit


public class Service {
    
    private init() {}
    
    
    public static func actionSheetCanecel(title: String, actionTitle: String) -> UIAlertController{
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: actionTitle, style: .cancel))
        return alertController
    }
    
    
    public static func actionSheetCanecel(title: String, actionTitle: String, completion: @escaping () -> ()) -> UIAlertController{
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            completion()
        }))
        alertController.addAction(UIAlertAction(title: actionTitle, style: .cancel))
        return alertController
    }
    
}
