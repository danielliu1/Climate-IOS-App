//
//  WeatherData.swift
//  ClimateIOS
//
//  Created by dl1 on 4/2/21.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
}

struct Main: Decodable {
    let temp: Double
}
