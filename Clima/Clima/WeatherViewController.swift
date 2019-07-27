//
//  ViewController.swift
//  WeatherApp
//
//  Created by Angela Yu on 23/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit
import CoreLocation
import Alamofire
import SwiftyJSON

class WeatherViewController: UIViewController, CLLocationManagerDelegate {
    
    //Constants
    let WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather"
    let APP_ID = "a96e270ebbf9b0048c1c41d3e9a838d7"
    /***Get your own App ID at https:openweathermap.org/appid ****/
    

    //TODO: Declare instance variables here
    var locationManager = CLLocationManager()

    
    //Pre-linked IBOutlets
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //TODO:Set up the location manager here.
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        
    }
    
    
    
    //MARK: - Networking
    /***************************************************************/
    
    //Write the getWeatherData method here:
    func getWeatherData(URL:String, parameter: [String: String]) {
        
        Alamofire.request(URL, method: .get, parameters: parameter).responseJSON {
            response in
            if response.result.isSuccess {
                print("Success")
            }
            
            else {
                print("Server didn't responded correctly")
                self.cityLabel.text = "Connection Issue"
            }
        }
        
    }

    
    
    
    
    
    //MARK: - JSON Parsing
    /***************************************************************/
   
    
    //Write the updateWeatherData method here:
    

    
    
    
    //MARK: - UI Updates
    /***************************************************************/
    
    
    //Write the updateUIWithWeatherData method here:
    
    
    
    
    
    
    //MARK: - Location Manager Delegate Methods
    /***************************************************************/
    
    
    //Write the didUpdateLocations method here:
    
    //This function is triggered when the locationManager is able to successfully retrieve the location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count - 1]
        if location.horizontalAccuracy > 0 {
            //Important because location manager is a very battery intensive process and should be stopped when done
            locationManager.stopUpdatingLocation()
            print("Location: (\(location.coordinate.longitude), \(location.coordinate.latitude))")
            let latitude = location.coordinate.latitude
            let longitude = location.coordinate.longitude
            
            let params: [String : String] = ["lat": String(latitude), "lon": String(longitude), "appid": APP_ID ]
            
            getWeatherData(URL: WEATHER_URL, parameters: params)
        }
    }
    
    //Write the didFailWithError method here:
    //This function is triggered when the locationManager is unable to retrieve the location
    //due to any reasons like, No Internet, is in airplane mode, permission not granted
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
        cityLabel.text = "Location Unavailable"
    }
    
    

    
    //MARK: - Change City Delegate methods
    /***************************************************************/
    
    
    //Write the userEnteredANewCityName Delegate method here:
    

    
    //Write the PrepareForSegue Method here
    
    
    
    
    
}


