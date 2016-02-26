//
//  Environment.swift
//  MagicSwiftNoStrings
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import Foundation


enum Environment: String {
  case Prod = "https://api.myapp.org"
  case Dev = "https://dev.api.myapp.org"

  var baseURL: NSURL {
    return NSURL(string: self.rawValue)!
  }

  func url(path: String) -> NSURL {
    return NSURL(string: path, relativeToURL: self.baseURL)!
  }
}



let currentEnvironment: Environment = Environment.Dev
