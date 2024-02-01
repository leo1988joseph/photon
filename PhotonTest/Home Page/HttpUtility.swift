//
//  HttpUtility.swift
//  PhotonTest
//
//  Created by Leo Joseph on 1/31/24.
//

import Foundation

class HttpUtility {
    
    func getMethod(url: String) {
        var schoolData = School()
            let requestURL: NSURL = NSURL(string: url)!
            let urlRequest: NSMutableURLRequest = NSMutableURLRequest(url: requestURL as URL)
            let session = URLSession.shared
            let task = session.dataTask(with: urlRequest as URLRequest) {
                    (data, response, error) -> Void in

                let httpResponse = response as! HTTPURLResponse
                    let statusCode = httpResponse.statusCode

                    if (statusCode == 200) {
                        
                        let school = try? JSONDecoder().decode(School.self, from: data!)
                        
                        schoolData = school!
                                                
                        for school in schoolData
                        {
                            print(school["school_name"]!)
                        }
                        
                    } else  {
                        print("Failed")
                                                
                    }
                }
        task.resume()


        }
    
    
}

