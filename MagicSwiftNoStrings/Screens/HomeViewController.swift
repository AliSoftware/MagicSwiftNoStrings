//
//  ViewController.swift
//  MagicSwiftNoStrings
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit

// ✍️ (13) By simply adding the conformance to StoryboardBased, we get the default implementations
//         so no need to provide any additional code for HomeViewController.instanciate() to work!
final class HomeViewController: UIViewController, StoryboardBased {

  @IBAction func slideshowAction(sender: UIButton) {
    // ✍️ (16) ImagesListViewController also conforms to StoryboardBased, so we can create one using instanciate()
    let vc = ImagesListViewController.instantiate()
    let nc = UINavigationController(rootViewController: vc)
    self.presentViewController(nc, animated: true, completion: nil)
  }

  @IBAction func waveAction(sender: UIButton) {
    showAlert("iOS Perth")
  }

  @IBAction func networkAction(sender: UIButton) {
    Route.UserInfo(userID: 42).fetch { response in
      do {
        let json = try response.json()
        if let name = json["name"] as? String {
          dispatch_async(dispatch_get_main_queue(), {
            self.showAlert(name)
          })
        }
      } catch {
        print("Error: \(error)")
      }
    }
  }

  private func showAlert(name: String) {
    let alert = UIAlertController(
      title: tr(.AppTitle),
      message: L10n.Greetings(name).string,
      preferredStyle: .Alert
    )
    alert.addAction(
      UIAlertAction(title: String(L10n.OK), style: .Cancel, handler: nil)
    )
    self.presentViewController(alert, animated: true, completion: nil)
  }
}

