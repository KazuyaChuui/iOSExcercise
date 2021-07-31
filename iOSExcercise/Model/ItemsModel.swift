//
//  ItemsModel.swift
//  iOSExcercise
//
//  Created by Jesus Ruiz on 7/30/21.
//

import Foundation

struct Item: Codable {
    let title: String
    let details: Details
}

struct Details: Codable {
    let description: String
    let day: Int
}
