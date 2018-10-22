//
//  FirstViewController.swift
//  glocraft_tabbed
//
//  Created by Steve Ravet on 10/21/18.
//  Copyright © 2018 Steve Ravet. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBAction func pushButtonPressed(_ button: color_button) {
    let which_button = button_types(rawValue: button.which_button)
    switch which_button {
    case .dodger?:
      print("Dodgers!")
    case .breast_cancer?:
      print("Breast Cancer!")
    case .longhorn?:
      print("Longhorns suck!")
    case .america?:
      print("America!")
    default:
      print("Bad button!")
    }

    #if false
    if button.isAddButton {
      counterView.counter += 1
    } else {
      if counterView.counter > 0 {
        counterView.counter -= 1
      }
    }
    counterLabel.text = String(counterView.counter)
    #endif
  }
}

