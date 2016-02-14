//
//  Fonts.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit

struct AppFonts {
  static let Title = UIFont.boldSystemFontOfSize(16)
  static let Body = UIFont.systemFontOfSize(14)
  static let Footnote = UIFont.italicSystemFontOfSize(10)
}

enum Environment: String {
  case Prod = "http://api.myapp.org"
  case Dev = "http://dev.api.myapp.org"

  var baseURL: NSURL {
    return NSURL(string: self.rawValue)!
  }

  func url(path: String) -> NSURL {
    return NSURL(string: path, relativeToURL: self.baseURL)!
  }
}


func foo() {
  let label = UILabel()

  label.font = AppFonts.Title
}