import Foundation
//https://api.openweathermap.org/data/2.5/weather?appid=d1222fad79a39a7334f73fbd47ec26a6&units=metric

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=d1222fad79a39a7334f73fbd47ec26a6&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    //When search is clicked // networking sections
    func performRequest(urlString: String) {
        //create URL
        if let url = URL(string: urlString) {
            //create URL Session
            let session = URLSession(configuration: .default)
            //give session task
            let task = session.dataTask(with: url, completionHandler: handle(data: response: error: ))
            
            //start task
            task.resume()
        }
    }
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
}
