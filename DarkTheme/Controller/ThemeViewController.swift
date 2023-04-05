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
    
    @IBAction func plusButtonTapped(_ sender: Any) {
        basicAlert(title: "Add New?", message: "Do you want to add new...?")
    }
    
    @IBAction func infoButtonTapped(_ sender: Any) {
        basicActionAlert(title: "Action Sheet is On!", message: "All good here")
    }
    
    func turnDarkThemeOn(isDarkThemeOn: Bool) {
        darkThemeButton.setTitle(isDarkThemeOn ? ButtonText.on.rawValue : ButtonText.off.rawValue, for: .normal)
        darkThemeButton.setTitleColor(isDarkThemeOn ? .black : .white, for: .normal)
        
        navigationItem.title = isDarkThemeOn ? NavBarText.off.rawValue : NavBarText.on.rawValue
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: isDarkThemeOn ? UIColor.black : UIColor.white]
        view.backgroundColor = isDarkThemeOn ? .white : .black
        darkThemeIsOn.toggle()
    }
}
