import UIKit
import CoreLocation
import Alamofire
import SwiftyJSON

class WeatherViewController: UIViewController, CLLocationManagerDelegate, ChangeCityDelegate {
    
    //Constants
    let WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather"
    let APP_ID = "a96e270ebbf9b0048c1c41d3e9a838d7"

    //TODO: Declare instance variables here
    let locationManager = CLLocationManager()
    let weatherDataModel = WeatherDataModel()

    //Pre-linked IBOutlets
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    //MARK: - Networking
    //Write the getWeatherData method here:
    func getWeatherData(URL:String, parameter: [String: String]) {
        
        Alamofire.request(URL, method: .get, parameters: parameter).responseJSON {
            response in
            if response.result.isSuccess {
                print("Got the weather data")
                let weatherData: JSON = JSON(response.result.value!)
                self.updateWeatherData(weatherData: weatherData)
            }
            
            else {
                print("Server didn't responded correctly")
                self.cityLabel.text = "Unable to connect to server"
            }
        }
        
    }

    //MARK: - JSON Parsing
    //Write the updateWeatherData method here:
    func updateWeatherData(weatherData : JSON) {
        if let _ = weatherData["main"]["temp"].float {
            weatherDataModel.temperature = Int(weatherData["main"]["temp"].floatValue - 273.15)
            weatherDataModel.city = weatherData["name"].stringValue
            weatherDataModel.condition = weatherData["weather"][0]["id"].intValue
            weatherDataModel.weatherIconName = weatherDataModel.updateWeatherIcon(condition: weatherDataModel.condition)
            
            updateUIWithWeatherData()
        }
        
        else {
            cityLabel.text = "OOPS! Our servers messed up"
        }
    }


    func updateUIWithWeatherData() {
        cityLabel.text = weatherDataModel.city
        temperatureLabel.text = String(weatherDataModel.temperature) + "°"
        weatherIcon.image = UIImage(named: weatherDataModel.weatherIconName)
    }
    
    
    //MARK: - Location Manager Delegate Methods
    
    //This function is triggered when the locationManager is able to successfully retrieve the location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count - 1]
        if location.horizontalAccuracy > 0 {
            //Important because location manager is a very battery intensive process and should be stopped when done
            locationManager.stopUpdatingLocation()
            locationManager.delegate = nil
            print("Location: (\(location.coordinate.longitude), \(location.coordinate.latitude))")
            let latitude = location.coordinate.latitude
            let longitude = location.coordinate.longitude
            
            let params: [String : String] = ["lat": String(latitude), "lon": String(longitude), "appid": APP_ID ]
            
            getWeatherData(URL: WEATHER_URL, parameter: params)
        }
    }
    
    //This function is triggered when the locationManager is unable to retrieve the location
    //due to any reasons like, No Internet, is in airplane mode, permission not granted
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
        cityLabel.text = "Location Unavailable"
    }

    
    //MARK: - Change City Delegate methods
    
    //this function is called in ChangeCityViewController, data is sent from there to here
    //this function is the part of the protocol we defined named ChangeCityDelegate
    //When a class implements/inherit a protocol it has to follow all the requirements defined in the protocol
    //So this defination of the function userEnteredNewCityName() is the implementation of the function from
    //Protocol ChangeCityDelegate
    func userEnteredNewCityName(city: String) {
        print("Searched for \(city)")
        let params: [String : String] = ["q" : city, "appid" : APP_ID]
        getWeatherData(URL: WEATHER_URL, parameter: params)
    }

    //this function is called just before going to the next ViewController, ChangeCityViewController here in
    //this case
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "changeCityName" {
            let destination = segue.destination as! ChangeCityViewController
            destination.delegate = self
        }
    }
}
