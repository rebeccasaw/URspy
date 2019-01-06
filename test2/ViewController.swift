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
    var E2Player = AVAudioPlayer()
    
    var e2Played = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("console log successful")
        
         let sound = Bundle.main.path(forResource: "bob", ofType: "wav")
        let e2Sound = Bundle.main.path(forResource:"E2", ofType:"mp3")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:sound!)as URL)
            E2Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:e2Sound!)as URL)
        }catch{
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
            
            
             if(53.94589<lat && lat<53.94624 && -1.05246<lon && lon < -1.05188){
                //play e2 audio - Health Centre
                if(!e2Played){
                    E2Player.play()
                    e2Played=true;
                }else{
                    if(!E2Player.isPlaying){
                    locationLabel.text="audio finished"
                }
                
                }
            }
        }
    }
    
    @IBAction func StartButtonPress(_ sender: Any) {
      //  NSLog("start button pressed")
       print (audioPlayer.isPlaying)
      // audioPlayer.play()
       // E2Player.play()
        if (a==false){
            locationLabel.text="Location: Chemistry"
            a=true
        } else{
            locationLabel.text="Location: James"
            a=false
        }
    }
    
    
    
   


}

