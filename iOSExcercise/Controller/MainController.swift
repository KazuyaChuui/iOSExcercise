//
//  MainController.swift
//  iOSExcercise
//
//  Created by Jesus Ruiz on 7/30/21.
//

import Foundation
import UIKit

extension MainViewController {
    func parse() {
        let jsonData = loadJSONData(filename: "items")
        if let data = jsonData {
            if let itemObj = parser(jsonData: data) {
                items = itemObj
            }
        }
    }
}
