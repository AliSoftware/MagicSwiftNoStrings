//
//  ImagesListViewController.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit
import Reusable

final class ImagesListViewController: UITableViewController, StoryboardBased {
  let images: [UIImage.Asset] = [.Apple, .Banana, .Watermelon]

  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = L10n.AppTitle.string
    self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: L10n.Close.string, style: .Plain, target: self, action: Selector("close:"))
  }

  @IBAction private func close(_: AnyObject) {
    self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
  }

  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return images.count
  }

  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(indexPath: indexPath) as ImageCell
    let asset = images[indexPath.row]
    cell.asset = asset
    return cell
  }
}
