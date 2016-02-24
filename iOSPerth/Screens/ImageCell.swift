//
//  ImageCell.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit
import Reusable

// ✍️ (18) Reusable is also a Mixin (from the "Resuable" pod, see Pods.xcodeproj)
// ✍️ (19) By making ImageCell conforms to Reusable, we can dequeue it easily
final class ImageCell: UITableViewCell, Reusable {
  @IBOutlet private weak var pictureView: UIImageView!
  @IBOutlet private weak var titleLabel: UILabel! {
    didSet {
      titleLabel.textColor = UIColor.AppColor.Red.color
      titleLabel.font = AppFonts.Gallery.Caption
    }
  }

  var asset: UIImage.Asset? {
    didSet {
      guard let asset = asset else { return }
      titleLabel.text = asset.rawValue
      // ✍️ (5) You can easily create an UIImage from an asset enum
      pictureView.image = UIImage(asset: asset)
//      pictureView.image = asset.image
    }
  }
}
