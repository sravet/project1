//
//  color_button.swift
//  glocraft_tabbed
//
//  Created by Steve Ravet on 10/21/18.
//  Copyright © 2018 Steve Ravet. All rights reserved.
//
// implementation of a custom button that draws itself. A few things:
//
// @IBDesignable means that the storyboard view will run this code in order
// to display the button "live" after code changes.
//
// The @IBInspectable variables show up in the storyboard Attribute Inspector
// view for the button, which means that they can be modified there and the
// changes will show up in the code (ie use the storyboard color picker to
// set the fill color). The enums for button_types doesn't directly work,
// but the integer equivalents can be used in the storyboard.

import UIKit

enum button_types: Int {
  case dodger=0
  case breast_cancer=1
  case longhorn=2
  case america=3
}

@IBDesignable
class color_button: UIButton {

  @IBInspectable var fillColor: UIColor = UIColor.green
  @IBInspectable var which_button: Int = button_types.dodger.rawValue

  // override the draw function in order to draw the button.  Most buttons are a single color, which they
  // get from the default color set in the storyboard view.  It shows up automatically in fillColor.
  // the america button is red, white, and blue, so is drawn explicitly.
  override func draw(_ rect: CGRect) {
    if which_button == button_types.america.rawValue {
      let color_width = rect.width/3
      // red
      var path = UIBezierPath(rect: (CGRect(x:rect.minX, y:rect.minY, width:rect.width/3, height:rect.height)))
      UIColor.red.setFill()
      path.fill()
        
      //white
      path = UIBezierPath(rect: (CGRect(x:rect.minX + color_width, y:rect.minY, width:rect.width/3, height:rect.height)))
      UIColor.white.setFill()
      path.fill()

      //blue
      path = UIBezierPath(rect: (CGRect(x:rect.minX + 2 * color_width, y:rect.minY, width:rect.width/3, height:rect.height)))
      UIColor.blue.setFill()
      path.fill()
    } else {
      let path=UIBezierPath(rect: rect)
      fillColor.setFill()
      path.fill()
    }
  }
}
