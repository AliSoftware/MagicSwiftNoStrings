//
//  ImagesViewController.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit

final class ImagesViewController: UIViewController, StoryboardBased {

  private let images = [Asset.Apple, Asset.Pear, Asset.Banana]
  private var index = 0 {
    didSet { updateImage() }
  }

  @IBOutlet private weak var imageView: UIImageView! {
    didSet { updateImage() }
  }

  private func updateImage() {
    let wrappedIdx = (index % images.count + images.count) % images.count
    imageView.image = UIImage(asset: images[wrappedIdx])
  }

  @IBAction func previousAction(sender: UIButton) {
    index -= 1
  }

  @IBAction func nextAction(sender: UIButton) {
    index += 1
  }

  @IBAction func closeAction(sender: UIButton) {
    self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
  }
}