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
  case Banana
  case Watermelon

  var image: UIImage! {
    return UIImage(named: self.rawValue)
  }
}

extension UIImage {
  convenience init!(asset: Asset) {
    self.init(named: asset.rawValue)!
  }
}

// let bananaImage: UIImage = Asset.Banana.image
// let appleImage: UIImage = UIImage(asset: .Apple)
