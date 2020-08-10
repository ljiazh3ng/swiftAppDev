//
//  WeatherManger.swift
//  Clima
//
//  Created by Jia Zheng Lua on 8/8/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL =
    "https://api.openweathermap.org/data/2.5/weather?appid=62dcc022e1ecc6bcb7d54fd65e0fab2e"
    
    func fetchWeather(cityName : String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
