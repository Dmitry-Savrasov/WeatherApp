//
//  WeatherParametrsView.swift
//  WeatherApp
//
//  Created by Дмитрий Саврасов on 14.08.22.
//

import Foundation
import UIKit

class WeatherParametrsView: UIView {
    
    private lazy var temperatureView = makeTemperatureView()
    private lazy var humidityView = makeTemperatureView()
    private lazy var sunriseView = makeTemperatureView()
    private lazy var dayImage = makeDayImage()
    private lazy var nightImage = makeNightImage()
    private lazy var temperatureDay = temperatureDayLabel()
    private lazy var temperatureNight = temperatureNightLabel()
    private lazy var windWeather = windWeatherImage()
    private lazy var wetWeather = wetWeatherImage()
    private lazy var speedWet = speedWindLabel()
    private lazy var humidityProcent = humidityProcentLabel()
    private lazy var sunriseImage = makeSunriseImage()
    private lazy var sunsetImage = makeSunsetImage()
    private lazy var sunriseLabel = makeSunriseLabel()
    private lazy var sunsetLabel = makeSunsetLabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(named: "Cyan2")
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeTemperatureView() -> UIView {
        let view = UIView()
        view.layer.cornerRadius = 16
        view.backgroundColor = UIColor(named: "SkyBlue")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    private func makeDayImage() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "Day")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    private func makeNightImage() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "Moon")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    private func windWeatherImage() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "Wind")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    private func wetWeatherImage() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "Wet")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    private func makeSunriseImage() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "Sunrise")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    private func makeSunsetImage() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "Sunset")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    private func temperatureDayLabel() -> UILabel {
        let label = UILabel()
        label.text = ("28°C")
        label.font = UIFont(name: label.font.fontName, size: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func temperatureNightLabel() -> UILabel {
        let label = UILabel()
        label.text = ("28°C")
        label.font = UIFont(name: label.font.fontName, size: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func speedWindLabel() -> UILabel {
        let label = UILabel()
        label.text = ("13 kmph")
        label.font = UIFont(name: label.font.fontName, size: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func humidityProcentLabel() -> UILabel {
        let label = UILabel()
        label.text = ("38%")
        label.font = UIFont(name: label.font.fontName, size: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func makeSunriseLabel() -> UILabel {
        let label = UILabel()
        label.text = ("05:47")
        label.font = UIFont(name: label.font.fontName, size: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func makeSunsetLabel() -> UILabel {
        let label = UILabel()
        label.text = ("18:32")
        label.font = UIFont(name: label.font.fontName, size: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    
    private func configureUI() {
        addSubview(temperatureView)
        addSubview(humidityView)
        addSubview(sunriseView)
        temperatureView.addSubview(dayImage)
        temperatureView.addSubview(nightImage)
        temperatureView.addSubview(temperatureDay)
        temperatureView.addSubview(temperatureNight)
        humidityView.addSubview(windWeather)
        humidityView.addSubview(wetWeather)
        humidityView.addSubview(speedWet)
        humidityView.addSubview(humidityProcent)
        sunriseView.addSubview(sunriseImage)
        sunriseView.addSubview(sunsetImage)
        sunriseView.addSubview(sunriseLabel)
        sunriseView.addSubview(sunsetLabel)
        
        
        NSLayoutConstraint.activate([
            temperatureView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            temperatureView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            temperatureView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            temperatureView.widthAnchor.constraint(equalToConstant: 97),
            temperatureView.heightAnchor.constraint(equalToConstant: 71),
            
            humidityView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            humidityView.leadingAnchor.constraint(equalTo: temperatureView.trailingAnchor, constant: 10),
            humidityView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            humidityView.widthAnchor.constraint(equalToConstant: 97),
            humidityView.heightAnchor.constraint(equalToConstant: 71),
            
            sunriseView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            sunriseView.leadingAnchor.constraint(equalTo: humidityView.trailingAnchor, constant: 10),
            sunriseView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            sunriseView.widthAnchor.constraint(equalToConstant: 97),
            sunriseView.heightAnchor.constraint(equalToConstant: 71),
            
            dayImage.topAnchor.constraint(equalTo: temperatureView.topAnchor, constant: 17),
            dayImage.leadingAnchor.constraint(equalTo: temperatureView.leadingAnchor, constant: 22),
            dayImage.heightAnchor.constraint(equalToConstant: 14),
            
            temperatureDay.topAnchor.constraint(equalTo: temperatureView.topAnchor, constant: 17),
            temperatureDay.leadingAnchor.constraint(equalTo: dayImage.trailingAnchor, constant: 18),
            temperatureDay.heightAnchor.constraint(equalToConstant: 14),
            
            nightImage.topAnchor.constraint(equalTo: dayImage.bottomAnchor, constant: 10),
            nightImage.leadingAnchor.constraint(equalTo: temperatureView.leadingAnchor, constant: 22),
            nightImage.widthAnchor.constraint(equalToConstant: 14),
            nightImage.heightAnchor.constraint(equalToConstant: 14),
            
            temperatureNight.topAnchor.constraint(equalTo: temperatureDay.bottomAnchor, constant: 10),
            temperatureNight.leadingAnchor.constraint(equalTo: nightImage.trailingAnchor, constant: 18),
            temperatureNight.heightAnchor.constraint(equalToConstant: 14),
            
            windWeather.topAnchor.constraint(equalTo: humidityView.topAnchor, constant: 17),
            windWeather.leadingAnchor.constraint(equalTo: humidityView.leadingAnchor, constant: 22),
            windWeather.heightAnchor.constraint(equalToConstant: 14),
            
            speedWet.topAnchor.constraint(equalTo: humidityView.topAnchor, constant: 17),
            speedWet.leadingAnchor.constraint(equalTo: windWeather.trailingAnchor, constant: 18),
            speedWet.heightAnchor.constraint(equalToConstant: 14),
            
            wetWeather.topAnchor.constraint(equalTo: windWeather.bottomAnchor, constant: 10),
            wetWeather.leadingAnchor.constraint(equalTo: humidityView.leadingAnchor, constant: 22),
            wetWeather.widthAnchor.constraint(equalToConstant: 14),
            wetWeather.heightAnchor.constraint(equalToConstant: 14),
            
            humidityProcent.topAnchor.constraint(equalTo: speedWet.bottomAnchor, constant: 10),
            humidityProcent.leadingAnchor.constraint(equalTo: wetWeather.trailingAnchor, constant: 18),
            humidityProcent.heightAnchor.constraint(equalToConstant: 14),
            
            sunriseImage.topAnchor.constraint(equalTo: sunriseView.topAnchor, constant: 17),
            sunriseImage.leadingAnchor.constraint(equalTo: sunriseView.leadingAnchor, constant: 22),
            sunriseImage.heightAnchor.constraint(equalToConstant: 14),
            
            sunriseLabel.topAnchor.constraint(equalTo: sunriseView.topAnchor, constant: 17),
            sunriseLabel.leadingAnchor.constraint(equalTo: sunriseImage.trailingAnchor, constant: 18),
            sunriseLabel.heightAnchor.constraint(equalToConstant: 14),
            
            sunsetImage.topAnchor.constraint(equalTo: sunriseImage.bottomAnchor, constant: 10),
            sunsetImage.leadingAnchor.constraint(equalTo: sunriseView.leadingAnchor, constant: 22),
            sunsetImage.widthAnchor.constraint(equalToConstant: 22),
            sunsetImage.heightAnchor.constraint(equalToConstant: 14),
            
            sunsetLabel.topAnchor.constraint(equalTo: sunriseLabel.bottomAnchor, constant: 10),
            sunsetLabel.leadingAnchor.constraint(equalTo: sunsetImage.trailingAnchor, constant: 18),
            sunsetLabel.heightAnchor.constraint(equalToConstant: 14)
            
            
            
            
            
            
        ])
        
    }
}
