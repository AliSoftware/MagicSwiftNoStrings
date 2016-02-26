# Enums as Constants — SwiftGen Demo

## Context

This project has been used as a demo during some live coding talks (like iOS Perth Meetup talk in February 2016).

## Aim of this demo

This project is used to demonstrate various tricks and pattern to make constants more Swifty:

* using enums as constants for various stuff (images, colors, fonts, …)
* using Protocols with Default Implementations for Storyboard Scenes/Segues and for UITableViewCells / UICollectionViewCells, like with the [Reusable](https://github.com/AliSoftware/Reusable) pod.

## Main concepts presented

* In Swift, any type can be used as a constant, you can declare `static let` even of type `UIColor` or `UIFont`. This was not true in Objective-C with `static XXX* const` declarations.
* Namespace your related constants in `struct` (see `AppFonts.swift`)
* You can use `enums`, either with `rawValue` or associated value, to represent ressources finite in numbers, like images in your Assets catalog, colors or strings from your `Localizable.strings`
* Use [SwiftGen](https://github.com/AliSoftware/SwiftGen) to auto-generate the Swift code containing your constants. Adding the tool as a "Script Build Phase" in your project will ensure your constants are always up to date with your resources (images, colors, strings, …) even after adding or removing some of those resources from your project.
