//
//  ThemeViewController.swift
//  DarkTheme
//
//  Created by jazeps.ivulis on 03/04/2023.
//

import UIKit

class ThemeViewController: UIViewController {

    @IBOutlet weak var darkThemeButton: UIButton!
    var mainText: String = "Dark Theme On"
    var darkIsOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad from ViewController")
        darkThemeButton.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
    }

    @IBAction func darkThemeButtonTapped(_ sender: Any) {
        darkThemeIsOn(isOn: darkIsOn)
    }
    
    func darkThemeIsOn(isOn: Bool) {
        darkThemeButton.setTitle(mainText, for: .normal)
        darkThemeButton.setTitleColor(UIColor.black, for: .normal)
        
        navigationItem.title = mainText
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        view.backgroundColor = UIColor.black
    }
}

