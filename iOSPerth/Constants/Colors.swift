//
//  Colors.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 15/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit

enum AppColor: UInt32 {
  /** <div style='background: #888888; width: 40px; height: 20px; border: 1px solid black'></div> #888888 */
  case Gray = 0x888888FF
  /** <div style='background: #3366CC; width: 40px; height: 20px; border: 1px solid black'></div> #3366CC */
  case Blue = 0x3366CCFF
  /** <div style='background: #C93342; width: 40px; height: 20px; border: 1px solid black'></div> #C93342 */
  case Red  = 0xC93342FF
  /** <div style='background: #FFFFFF; width: 40px; height: 20px; border: 1px solid black'></div> #FFFFFF (50%) */
  case Translucent = 0xFFFFFF80

  var color: UIColor {
    return UIColor(
      red:   CGFloat((self.rawValue >> 24) & 0xFF) / 255,
      green: CGFloat((self.rawValue >> 16) & 0xFF) / 255,
      blue:  CGFloat((self.rawValue >>  8) & 0xFF) / 255,
      alpha: CGFloat( self.rawValue        & 0xFF) / 255
    )
  }
}

extension UIColor {
  convenience init(color: AppColor) {
    self.init(CGColor: color.color.CGColor)
  }
}

// let redColor: UIColor = AppColor.Red.color
// let blueColor: UIColor = UIColor(color: .Blue)
