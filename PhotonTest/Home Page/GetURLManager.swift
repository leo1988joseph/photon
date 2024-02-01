//
//  GetURLManager.swift
//  PhotonTest
//
//  Created by Leo Joseph on 1/31/24.
//

import Foundation

class GetURLManager {
    
    let httpUtility = HttpUtility()
    
    
    func getData() {
        
        httpUtility.getMethod(url: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json")
        
    }
    
}
