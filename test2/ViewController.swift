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
    
    @IBOutlet weak var goToLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    var lat=0.0
    var lon=0.0
   
    
    var APlayer = AVAudioPlayer()
    var BPlayer = AVAudioPlayer()
    var C1Player = AVAudioPlayer()
    var C2Player = AVAudioPlayer()
    var D1Player = AVAudioPlayer()
    var D2Player = AVAudioPlayer()
    var D3Player = AVAudioPlayer()
    var E1Player = AVAudioPlayer()
    var E2Player = AVAudioPlayer()
    var E3Player = AVAudioPlayer()
    var E4Player = AVAudioPlayer()
    var F1Player = AVAudioPlayer()
    var F2Player = AVAudioPlayer()
    var F3Player = AVAudioPlayer()
    var G1Player = AVAudioPlayer()
    var G2Player = AVAudioPlayer()
    var G3Player = AVAudioPlayer()
    
    var aPlayed = false
    var bPlayed = false
    var c1Played = false
    var c2Played = false
    var d1Played = false
    var d2Played = false
    var d3Played = false
    var e1Played = false
    var e2Played = false
    var e3Played = false
    var e4Played = false
    var f1Played = false
    var f2Played = false
    var f3Played = false
    var g1Played = false
    var g2Played = false
    var g3Played = false
    
    var lastOneYUSU = false
    var lastOneHesHall = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("console log successful")
        
        let aSound = Bundle.main.path(forResource:"A", ofType:"mp3")
        let bSound = Bundle.main.path(forResource:"B", ofType:"mp3")
        let c1Sound = Bundle.main.path(forResource:"C1", ofType:"mp3")
        let c2Sound = Bundle.main.path(forResource:"C2", ofType:"mp3")
        let d1Sound = Bundle.main.path(forResource:"D1", ofType:"mp3")
        let d2Sound = Bundle.main.path(forResource:"D2", ofType:"mp3")
        let d3Sound = Bundle.main.path(forResource:"D3", ofType:"mp3")
        let e1Sound = Bundle.main.path(forResource:"E1", ofType:"mp3")
        let e2Sound = Bundle.main.path(forResource:"E2", ofType:"mp3")
        let e3Sound = Bundle.main.path(forResource:"E3", ofType:"mp3")
        let e4Sound = Bundle.main.path(forResource:"E4", ofType:"mp3")
        let f1Sound = Bundle.main.path(forResource:"F1", ofType:"mp3")
        let f2Sound = Bundle.main.path(forResource:"F2", ofType:"mp3")
        let f3Sound = Bundle.main.path(forResource:"F3", ofType:"mp3")
        let g1Sound = Bundle.main.path(forResource:"G1", ofType:"mp3")
        let g2Sound = Bundle.main.path(forResource:"G2", ofType:"mp3")
        let g3Sound = Bundle.main.path(forResource:"G3", ofType:"mp3")
        
        do{
            APlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:aSound!)as URL)
            BPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:bSound!)as URL)
            C1Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:c1Sound!)as URL)
            C2Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:c2Sound!)as URL)
            D1Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:d1Sound!)as URL)
            D2Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:d2Sound!)as URL)
            D3Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:d3Sound!)as URL)
            E1Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:e1Sound!)as URL)
            E2Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:e2Sound!)as URL)
            E3Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:e3Sound!)as URL)
            E4Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:e4Sound!)as URL)
            F1Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:f1Sound!)as URL)
            F2Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:f2Sound!)as URL)
            F3Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:f3Sound!)as URL)
            G1Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:g1Sound!)as URL)
            G2Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:g2Sound!)as URL)
            G3Player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:g3Sound!)as URL)
            
        }catch{
        print(error)
        }
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        //locationManager.startUpdatingLocation() //move to start button?
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        for currentLocation in locations {
           // print("\(index):\(currentLocation)")
            
//            print (currentLocation.coordinate.longitude)
//             print (currentLocation.coordinate.latitude)
         
            lon=currentLocation.coordinate.longitude
            lat=currentLocation.coordinate.latitude
            
            
            if (53.94804<lat && lat<53.94831 && -1.0543<lon && lon < -1.0538) {
                locationLabel.text = "Location: URY Station"
                goToLabel.text = ""
                if(!aPlayed){
                    APlayer.play()
                    aPlayed = true
                } else{
                    if(!APlayer.isPlaying){
                        goToLabel.text="Go to Market Square"
                    }
                }
            }
            
            else if(53.94816<lat && lat<53.94864 && -1.05364<lon && lon < -1.05267){
                locationLabel.text = "Location: Market Square"
                goToLabel.text = ""
                if(!bPlayed){
                    BPlayer.play()
                    bPlayed = true
                } else{
                    if(!BPlayer.isPlaying){
                        goToLabel.text="Go to the Library or James College"
                    }
                }
            }
            else if(53.94876<lat && lat<53.9492 && -1.05324<lon && lon < -1.05136){
                locationLabel.text = "Location: Library"
                goToLabel.text = ""
                if(!c1Played){
                    C1Player.play()
                    c1Played = true
                } else{
                    if(!C1Player.isPlaying){
                        goToLabel.text="Go to the Library or James College"
                    }
                }
            }
            else if(53.9462<lat && lat<53.94702 && -1.0565<lon && lon < -1.05475){
                locationLabel.text = "Location: James College"
                goToLabel.text = ""
                if(!c2Played){
                    C2Player.play()
                    c2Played = true
                } else{
                    if(!C2Player.isPlaying){
                        goToLabel.text="Go to YUSU or Wentworth College"
                    }
                }
            }
            else if(53.94761<lat && lat<53.94878 && -1.04901<lon && lon < -1.0468){
                locationLabel.text = "Location: Chemistry"
                goToLabel.text = ""
                if(!d1Played){
                    D1Player.play()
                    d1Played = true
                } else{
                    if(!D1Player.isPlaying){
                        goToLabel.text="Go to Derwent Bridge or Hull York Medical School"
                    }
                }
            }
            else if(53.94553<lat && lat<53.94608 && -1.05593<lon && lon < -1.05458){
                locationLabel.text = "Location: YUSU"
                goToLabel.text = ""
                if(!d2Played){
                    D2Player.play()
                    d2Played = true
                } else{
                    if(!D2Player.isPlaying){
                        goToLabel.text="Go to the Health Centre or the Observatory"
                    }
                }
            }
            else if(53.94536<lat && lat<53.9468 && -1.05907<lon && lon < -1.05675){
                locationLabel.text = "Location: Wentworth College"
                goToLabel.text = ""
                if(!d3Played){
                    D3Player.play()
                    d3Played = true
                } else{
                    if(!D3Player.isPlaying){
                        goToLabel.text="Game Over"
                    }
                }
            }
            else if(53.94677<lat && lat<53.94768 && -1.05024<lon && lon < -1.04755){
                locationLabel.text = "Location: Derwent"
                goToLabel.text = ""
                if(!e1Played){
                    E1Player.play()
                    e1Played = true
                } else{
                    if(!E1Player.isPlaying){
                        goToLabel.text="Go to Heslington Hall or Berrick Saul"
                    }
                }
            }
            else if(53.94589<lat && lat<53.94624 && -1.05246<lon && lon < -1.05188){
                locationLabel.text = "Location: Health Centre"
                goToLabel.text = ""
                if(!e2Played){
                    E2Player.play()
                    e2Played=true
                }else{
                    if(!E2Player.isPlaying){
                    goToLabel.text="Go to the Quiet Place"
                    }
                }
            }
            else if(53.9423<lat && lat<53.94482 && -1.0607<lon && lon < -1.05602){
                locationLabel.text = "Location: Observatory"
                goToLabel.text = ""
                if(!e3Played){
                    E3Player.play()
                    e3Played = true
                } else{
                    if(!E3Player.isPlaying){
                        goToLabel.text="Game Over"
                    }
                }
            }
            else if(53.94932<lat && lat<53.95106 && -1.05349<lon && lon < -1.04631){
                locationLabel.text = "Location: Hull York Medical School"
                goToLabel.text = ""
                if(!e4Played){
                    E4Player.play()
                    e4Played = true
                } else{
                    if(!E4Player.isPlaying){
                        goToLabel.text="Game Over"
                    }
                }
            }
            else if(53.94548<lat && lat<53.94622 && -1.04749<lon && lon < -1.04613){
                locationLabel.text = "Location: Heslington Hall"
                goToLabel.text = ""
                if(!f1Played){
                    F1Player.play()
                    f1Played = true
                } else{
                    if(!F1Player.isPlaying){
                        goToLabel.text="Go to Central Hall or the Ron Cooke Hub"
                    }
                }
            }
            else if(53.94494<lat && lat<53.94603 && -1.05021<lon && lon < -1.04755){
                if(!lastOneHesHall){
                locationLabel.text = "Location: The Quiet Place"
                goToLabel.text = ""
                if(!f2Played){
                    F2Player.play()
                    f2Played = true
                } else{
                    if(!F2Player.isPlaying){
                        goToLabel.text="Go to Central Hall or Physics"
                    }
                }
                }
            }
            else if(53.94739<lat && lat < 53.94803 && -1.05281<lon && lon < -1.05193){
                locationLabel.text = "Location: Berrick Saul"
                goToLabel.text = ""
                if(!f3Played){
                    F3Player.play()
                    f3Played = true
                } else{
                    if(!F3Player.isPlaying){
                        goToLabel.text="Game Over"
                    }
                }
            }
            else if(53.9468<lat && lat<53.94721 && -1.05319<lon && lon < -1.05251){
                locationLabel.text = "Location: Central Hall"
                goToLabel.text = ""
                if(!g1Played){
                    G1Player.play()
                    g1Played = true
                } else{
                    if(!G1Player.isPlaying){
                        goToLabel.text="Thanks for playing!"
                    }
                }
            }
            else if(53.94623<lat && lat<53.94982 && -1.03403<lon && lon < -1.02489){
                locationLabel.text = "Location: Heslington East"
                goToLabel.text = ""
                if(!g2Played){
                    G2Player.play()
                    g2Played = true
                } else{
                    if(!G2Player.isPlaying){
                        goToLabel.text="Thanks for playing!"
                    }
                }
            }
            else if(53.94574<lat && lat<53.9465 && -1.05424<lon && lon < -1.05287) {
                if(!lastOneYUSU){
                locationLabel.text = "Location: Physics Lakeside"
                goToLabel.text = ""
                if(!g3Played){
                    G3Player.play()
                    g3Played = true
                } else{
                    if(!G3Player.isPlaying){
                        goToLabel.text="Thanks for playing!"
                    }
                }
                }
            }
            else{
                locationLabel.text=""
            }
            //still in called on new location
            if (locationLabel.text != ""){
                if(locationLabel.text == "Location: YUSU"){
                    lastOneYUSU = true
                }else{
                    lastOneYUSU = false
                }
                if(locationLabel.text == "Location: Heslington Hall" || locationLabel.text == "Location: Derwent"){
                    lastOneHesHall = true
                }else{
                    lastOneHesHall = false
                }
            }
        }
    }
    
    @IBAction func StartButtonPress(_ sender: Any) {
      locationManager.startUpdatingLocation()
        goToLabel.text = "Go to URY Station"
        startButton.isHidden = true
    }
    
    
    
   


}

