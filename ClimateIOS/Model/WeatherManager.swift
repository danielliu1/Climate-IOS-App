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
            performRequest(urlString: urlString)
        }
        
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) {(data, response, error) in
            if error != nil {
                print(error!)
                return
            }
            
            if let safeData = data {
                self.parseJSON(weatherData: safeData)
            }
        }
        
        task.resume()
        }
    }

    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.main.temp)
        } catch {
            print(error)
        }
    }
}
