//
//  WeatherManager.swift
//  ClimateIOS
//
//  Created by dl1 on 4/2/21.
//

import Foundation

struct WeatherManager {
    let weatherURL =
        "https://api.openweathermap.org/data/2.5/weather?q=berkeley&appid=d1222fad79a39a7334f73fbd47ec26a6"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
    }
}
