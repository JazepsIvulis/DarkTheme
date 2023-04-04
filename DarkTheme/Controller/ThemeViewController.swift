//
//  ThemeViewController.swift
//  DarkTheme
//
//  Created by jazeps.ivulis on 03/04/2023.
//

import UIKit

class ThemeViewController: UIViewController {
    
    @IBOutlet weak var darkThemeButton: UIButton!
    
    enum NavBarText: String {
        case off = "Dark Theme Off"
        case on = "Dark Theme On"
    }
    
    enum ButtonText: String {
        case off = "Turn Dark Theme Off"
        case on = "Turn Dark Theme On"
    }

    var darkThemeIsOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        darkThemeButton.layer.cornerRadius = 8
        navigationItem.title = NavBarText.off.rawValue
        darkThemeButton.setTitle(ButtonText.on.rawValue, for: .normal)
    }

    @IBAction func darkThemeButtonTapped(_ sender: Any) {
        turnDarkThemeOn(isDarkThemeOn: darkThemeIsOn)
    }
    
    func turnDarkThemeOn(isDarkThemeOn: Bool) {
        if darkThemeIsOn {
            darkThemeButton.setTitle(ButtonText.on.rawValue, for: .normal)
            darkThemeButton.setTitleColor(UIColor.black, for: .normal)
            
            navigationItem.title = NavBarText.off.rawValue
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
            view.backgroundColor = UIColor.white
            darkThemeIsOn = false
        } else {
            darkThemeButton.setTitle(ButtonText.off.rawValue, for: .normal)
            darkThemeButton.setTitleColor(UIColor.white, for: .normal)
            
            navigationItem.title = NavBarText.on.rawValue
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            view.backgroundColor = UIColor.black
            darkThemeIsOn = true
        }
    }
}

