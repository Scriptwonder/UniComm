//
//  Data.swift
//  ProfileUI
//
//  Created by Diana Zheng on 3/2/20.
//  Copyright © 2020 CIS454. All rights reserved.
//

import Foundation

let profileData:[Profile] = load("category.json")

func load<T:Decodable>(_ filename:String, as type: T.Type = T.self) -> T {
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse")
    }
}
