//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var author = ""
    var data = AviatrixData()
    var currentLocation = "St. Louis"
    var distanceTraveled = 0//miles
    var maxFuel = 5000 //gallons
    var fuelLevel = 5000.0//gallons
    var milesPerGallon = 0.4//m/g
    var fuelSpent = ""
    var fuelCost = 0.0 //$
    
    
    
    init(username : String){
        author = username
    }
    var running = false
    
    func start() -> Bool {
        
        running = true
        return running
       
    }
    
    func refuel() {
        let gallonsNeeded = Double(maxFuel)-fuelLevel
        let data = AviatrixData()
        fuelCost += gallonsNeeded * data.fuelPrices[current.Location]!
        fuelLevel = 5000.0
        return gallonsNeeded
        
    }
    
    func flyTo(destination : String){
        distanceTraveled += distanceTo(currentLocation : currentLocation, target : destination)
        currentLocation = destination
        
       //create a full spent variable that calculates how much fuel you have used...
    }
    
    let fuelSpent = Double (distanceTraveled) /milesPerGallon!
   
    
    
    fuelLevel -= fuelSpent
    currentLocation = destination
    
    //update fuel based on fuelSpent
    
    func distanceTo(currentLocation : String, target : String) -> Int {
        return data.knownDistances[currentLocation]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}

