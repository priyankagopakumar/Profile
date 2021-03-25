//
//  CustomDetailViewController.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 3/24/21.
//

import UIKit

class CustomDetailViewController: UIViewController {

    @IBOutlet weak var titleView: UIView!
    @IBInspectable var topColor: UIColor = .black
    @IBInspectable var bottomColor: UIColor = .white
    
    var selectedItem: Any?
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        setupView()
    }
    
    func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = titleView.bounds
        titleView.layer.insertSublayer(gradientLayer, at:0)
    }
    
    func setupView() {
        if let project = selectedItem as? XProjects {
            titleLabel.text = project.name
            subtitleLabel.text = project.platform
            descriptionLabel.text = project.desc
        }
    }

    @IBAction func dismissController(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
