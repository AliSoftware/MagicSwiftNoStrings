// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import UIKit

extension UIColor {
  convenience init(rgbaValue: UInt32) {
    let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
    let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
    let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
    let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0

    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
}

extension UIColor {
  // ✍️ (6) Don't hesitate to use documentation comments to take advantage of Xcode's QuickHelp!
  enum AppColor {
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#3366cc"></span>
    /// Alpha: 100% <br/> (0x3366ccff)
    case Blue
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#888888"></span>
    /// Alpha: 100% <br/> (0x888888ff)
    case Gray
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c93342"></span>
    /// Alpha: 100% <br/> (0xc93342ff)
    case Red
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
    /// Alpha: 50% <br/> (0xffffff80)
    case Translucent

    // ✍️ (7) If a rawValue can't fit (because risk of duplicates) we can still have a computed property
    var rgbaValue: UInt32! {
      switch self {
      case .Blue: return 0x3366ccff
      case .Gray: return 0x888888ff
      case .Red: return 0xc93342ff
      case .Translucent: return 0xffffff80
      }
    }

    var color: UIColor {
      return UIColor(named: self)
    }
  }

  convenience init(named name: AppColor) {
    self.init(rgbaValue: name.rgbaValue)
  }
}
