import Foundation
//https://api.openweathermap.org/data/2.5/weather?appid=d1222fad79a39a7334f73fbd47ec26a6&units=metric

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=d1222fad79a39a7334f73fbd47ec26a6&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
