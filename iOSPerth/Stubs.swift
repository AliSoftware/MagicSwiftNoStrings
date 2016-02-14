//
//  Stubs.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import Foundation
import OHHTTPStubs

func setupNetworkStubs() {
  stub({ req in req.URL?.path?.hasPrefix("/user") == true }) { _ in
    let json = ["name": "Amazing Crowd"]
    let data = try! NSJSONSerialization.dataWithJSONObject(json, options: [])
    return OHHTTPStubsResponse(data: data, statusCode: 200, headers: nil)
  }
}
