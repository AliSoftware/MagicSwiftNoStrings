//
//  Images.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit

enum Asset: String {
  case Apple
  case Pear
  case Banana
}

extension UIImage {
  convenience init!(asset: Asset) {
    self.init(named: asset.rawValue)!
  }
}
