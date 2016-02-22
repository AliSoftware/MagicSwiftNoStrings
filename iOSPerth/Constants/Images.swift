// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import UIKit

extension UIImage {
  // ✍️ (3) Enums with rawValues are great for constants describing finite number of resources
  enum Asset: String {
    case Apple = "Apple"
    case Banana = "Banana"
    case Watermelon = "Watermelon"

    // ✍️ (4) Swift enums can have functions & computed properties like `image: UIImage` here
    var image: UIImage {
      return UIImage(asset: self)
    }
  }

  // ✍️ (4) You can also add an initializer using the enum
  convenience init!(asset: Asset) {
    self.init(named: asset.rawValue)
  }
}
