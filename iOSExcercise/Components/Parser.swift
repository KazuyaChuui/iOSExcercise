//
//  Parser.swift
//  iOSExcercise
//
//  Created by Jesus Ruiz on 7/30/21.
//

import Foundation
//
//Nunca lo habia leido de un archivo, me tarde un rato en la funcion parser por que se me fue que era un array
//
func loadJSONData(filename: String) -> Data? {
    guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
        return nil
    }
    return try? Data(contentsOf: url)
}

func parser(jsonData: Data) -> [Item]? {
    do {
        let decodedData = try JSONDecoder().decode([Item].self, from: jsonData)
        return decodedData
    } catch {
        print("error: \(error)")
    }
    return nil
}
