//
//  ImageCell.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit
import Reusable

final class ImageCell: UITableViewCell, Reusable {
  @IBOutlet private weak var pictureView: UIImageView!

  var asset: Asset? {
    didSet {
      pictureView.image = asset.map { UIImage(asset: $0) }
    }
  }
}
