//
//  ViewController.swift
//  test2
//
//  Created by Rebecca Saw on 23/12/2018.
//  Copyright © 2018 Rebecca Saw. All rights reserved.
//

import UIKit
import CoreLocation
import AVFoundation

class ViewController: UIViewController , CLLocationManagerDelegate{

    let locationManager:CLLocationManager=CLLocationManager()
    
    @IBOutlet weak var locationLabel: UILabel!
    var a = false
  
    var lat=0.0
    var lon=0.0
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("console log successful")
        
         let sound = Bundle.main.path(forResource: "urspyAudio1", ofType: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:sound!))
        }
        catch{
            print(error)
        }
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        for currentLocation in locations {
           // print("\(index):\(currentLocation)")
            
//            print (currentLocation.coordinate.longitude)
//             print (currentLocation.coordinate.latitude)
         
            lon=currentLocation.coordinate.longitude
            lat=currentLocation.coordinate.latitude
            
            let stringLat=lat.description
            let stringLon=lon.description
            
            locationLabel.text="Lat= "+stringLat+" Lon = "+stringLon
        }
    }
    
    @IBAction func StartButtonPress(_ sender: Any) {
      //  NSLog("start button pressed")
        audioPlayer.play()
        if (a==false){
            locationLabel.text="Location: Chemistry"
            a=true
        } else{
            locationLabel.text="Location: James"
            a=false
        }
    }
    
    
    
   


}

