//
//  ViewController.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController, StoryboardBased {

  @IBAction func waveAction(sender: UIButton) {
    let alert = UIAlertController(title: String(L10n.AppTitle), message: L10n.Greetings("iOS Perth").string, preferredStyle: .Alert)
    alert.addAction(UIAlertAction(title: String(L10n.OK), style: .Cancel, handler: nil))
    self.presentViewController(alert, animated: true, completion: nil)
  }

  @IBAction func slideshowAction(sender: UIButton) {
    let vc = ImagesViewController.instantiate()
    self.presentViewController(vc, animated: true, completion: nil)
  }
}

